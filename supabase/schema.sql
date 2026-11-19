-- Production planning schema. Review and test before applying.
create table if not exists public.profiles (
 id uuid primary key references auth.users(id) on delete cascade,
 display_name text not null,
 role text not null default 'public' check (role in ('public','reviewer','admin')),
 created_at timestamptz not null default now()
);
create table if not exists public.reports (
 id uuid primary key default gen_random_uuid(),
 reference_code text unique not null,
 submitter_id uuid references auth.users(id),
 platform_type text not null,
 platform_name text not null,
 urls text[] not null,
 affected_work text,
 description text not null,
 observed_date date,
 relationship text,
 evidence_notes text,
 status text not null default 'received' check (status in ('received','screening','more_information_required','under_assessment','referred','closed','duplicate')),
 created_at timestamptz not null default now(),
 updated_at timestamptz not null default now()
);
create table if not exists public.report_audit (
 id uuid primary key default gen_random_uuid(),
 report_id uuid not null references public.reports(id) on delete cascade,
 actor_id uuid references auth.users(id),
 action text not null,
 note text,
 created_at timestamptz not null default now()
);
alter table public.profiles enable row level security;
alter table public.reports enable row level security;
alter table public.report_audit enable row level security;
-- No broad public SELECT policies.
-- Production submission must use a server-side function with validation,
-- rate limiting, spam controls and reference generation.
-- Reviewer/admin access requires carefully tested role-based policies.
-- Store evidence in a private bucket with separate access policies.
