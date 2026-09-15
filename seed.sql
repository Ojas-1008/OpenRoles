-- OpenRoles Seed Data (Phase 0 - Step 2)
-- Rerunnable script: Clears existing jobs and inserts 55+ realistic developer roles spread across ~60 days.

-- Clean existing data
TRUNCATE TABLE openroles.jobs;

INSERT INTO openroles.jobs (title, company, location, is_remote, salary_min, salary_max, tags, posted_at, apply_url) VALUES
-- Day 0 to Day 5 (Recent postings)
('Senior Frontend Engineer', 'Vercel', 'San Francisco, CA', true, 160000, 210000, ARRAY['react', 'nextjs', 'typescript', 'tailwind'], now() - interval '2 hours', 'https://vercel.com/careers'),
('Staff Product Designer', 'Linear', 'San Francisco, CA', true, 180000, 240000, ARRAY['design-systems', 'figma', 'ui-ux', 'frontend'], now() - interval '6 hours', 'https://linear.app/careers'),
('Lead Platform Engineer', 'Stripe', 'Seattle, WA', false, 190000, 260000, ARRAY['go', 'kubernetes', 'aws', 'distributed-systems'], now() - interval '14 hours', 'https://stripe.com/jobs'),
('Full Stack Developer', 'Supabase', 'Remote', true, 135000, 175000, ARRAY['react', 'typescript', 'postgresql', 'node'], now() - interval '1 day', 'https://supabase.com/careers'),
('Backend Systems Engineer', 'Cloudflare', 'Austin, TX', true, 165000, 215000, ARRAY['rust', 'go', 'networking', 'linux'], now() - interval '1 day 4 hours', 'https://cloudflare.com/careers'),
('Founding Engineer', 'Resend', 'Remote', true, 150000, 200000, ARRAY['react', 'nextjs', 'node', 'typescript', 'email'], now() - interval '2 days', 'https://resend.com/careers'),
('Senior React Native Engineer', 'Shopify', 'Toronto, Canada', true, 145000, 190000, ARRAY['react-native', 'mobile', 'typescript', 'ios'], now() - interval '2 days 8 hours', 'https://shopify.com/careers'),
('Infrastructure Engineer', 'OpenAI', 'San Francisco, CA', false, 210000, 310000, ARRAY['python', 'kubernetes', 'cuda', 'gpu', 'terraform'], now() - interval '3 days', 'https://openai.com/careers'),
('Frontend Architect', 'Figma', 'New York, NY', true, 195000, 255000, ARRAY['react', 'webgl', 'typescript', 'performance', 'wasm'], now() - interval '3 days 12 hours', 'https://figma.com/careers'),
('DevOps / Site Reliability Engineer', 'Datadog', 'Boston, MA', false, 150000, 195000, ARRAY['python', 'go', 'docker', 'kubernetes', 'monitoring'], now() - interval '4 days', 'https://datadoghq.com/careers'),

-- Day 6 to Day 15
('Senior Software Engineer - Core Product', 'Notion', 'San Francisco, CA', true, 170000, 225000, ARRAY['react', 'typescript', 'postgresql', 'node'], now() - interval '6 days', 'https://notion.so/careers'),
('Staff Backend Engineer', 'Airbnb', 'Remote', true, 185000, 250000, ARRAY['java', 'graphql', 'microservices', 'aws'], now() - interval '7 days', 'https://airbnb.com/careers'),
('Frontend Engineer - Design Systems', 'GitHub', 'Remote', true, 140000, 185000, ARRAY['react', 'typescript', 'css', 'accessibility'], now() - interval '7 days 10 hours', 'https://github.com/about/careers'),
('AI Application Engineer', 'Anthropic', 'San Francisco, CA', false, 200000, 290000, ARRAY['python', 'typescript', 'llm', 'nextjs'], now() - interval '8 days', 'https://anthropic.com/careers'),
('Data Infrastructure Engineer', 'Snowflake', 'Bellevue, WA', false, 160000, 220000, ARRAY['c++', 'java', 'sql', 'distributed-systems'], now() - interval '9 days', 'https://snowflake.com/careers'),
('Senior Full Stack Engineer', 'Raycast', 'London, UK', true, 130000, 175000, ARRAY['react', 'typescript', 'node', 'macos', 'swift'], now() - interval '10 days', 'https://raycast.com/careers'),
('Security Software Engineer', '1Password', 'Toronto, Canada', true, 140000, 180000, ARRAY['rust', 'cryptography', 'golang', 'aws'], now() - interval '11 days', 'https://1password.com/careers'),
('UI/UX Design Engineer', 'Vercel', 'Remote', true, 155000, 205000, ARRAY['react', 'tailwind', 'animation', 'design-systems'], now() - interval '12 days', 'https://vercel.com/careers'),
('Senior Backend Engineer - Billing', 'Stripe', 'Dublin, Ireland', true, 140000, 190000, ARRAY['ruby', 'java', 'postgresql', 'fintech'], now() - interval '13 days', 'https://stripe.com/jobs'),
('Growth Software Engineer', 'Loom', 'Remote', true, 130000, 170000, ARRAY['react', 'nextjs', 'typescript', 'analytics'], now() - interval '14 days', 'https://loom.com/careers'),

-- Day 16 to Day 25
('Senior Cloud Architect', 'Amazon Web Services', 'Seattle, WA', false, 175000, 240000, ARRAY['aws', 'architecture', 'terraform', 'cloud'], now() - interval '16 days', 'https://amazon.jobs'),
('Developer Experience Engineer', 'Tailwind Labs', 'Remote', true, 140000, 180000, ARRAY['css', 'tailwind', 'react', 'nextjs', 'docs'], now() - interval '17 days', 'https://tailwindcss.com'),
('Distributed Systems Engineer', 'Cockroach Labs', 'New York, NY', true, 165000, 225000, ARRAY['go', 'sql', 'databases', 'distributed-systems'], now() - interval '18 days', 'https://cockroachlabs.com/careers'),
('Staff Frontend Engineer - Web Canvas', 'Canva', 'Austin, TX', true, 175000, 230000, ARRAY['typescript', 'webgl', 'react', 'performance'], now() - interval '19 days', 'https://canva.com/careers'),
('Junior / Mid Full Stack Developer', 'PostHog', 'Remote', true, 105000, 140000, ARRAY['python', 'react', 'typescript', 'django'], now() - interval '20 days', 'https://posthog.com/careers'),
('Principal Database Engineer', 'PlanetScale', 'Remote', true, 200000, 275000, ARRAY['go', 'mysql', 'vitess', 'distributed-systems'], now() - interval '21 days', 'https://planetscale.com/careers'),
('Senior Rust Developer', '1Password', 'Remote', true, 155000, 205000, ARRAY['rust', 'security', 'caching', 'desktop'], now() - interval '22 days', 'https://1password.com/careers'),
('Frontend Engineer - Workspace', 'Slack', 'San Francisco, CA', false, 150000, 195000, ARRAY['react', 'typescript', 'performance', 'electron'], now() - interval '23 days', 'https://slack.com/careers'),
('Site Reliability Engineer', 'Spotify', 'Stockholm, Sweden', true, 120000, 165000, ARRAY['python', 'gcp', 'kubernetes', 'terraform'], now() - interval '24 days', 'https://spotify.com/careers'),
('Staff Backend Engineer - Payments', 'Square', 'Remote', true, 180000, 240000, ARRAY['java', 'go', 'microservices', 'fintech'], now() - interval '25 days', 'https://squareup.com/careers'),

-- Day 26 to Day 35
('Lead Product Engineer', 'Arc Browser / The Browser Company', 'New York, NY', false, 185000, 250000, ARRAY['swift', 'c++', 'react', 'chromium'], now() - interval '26 days', 'https://thebrowser.company/careers'),
('Senior Next.js Developer', 'HashiCorp', 'Remote', true, 150000, 195000, ARRAY['nextjs', 'react', 'typescript', 'graphql'], now() - interval '27 days', 'https://hashicorp.com/careers'),
('Platform SRE', 'Twitch', 'Seattle, WA', false, 145000, 190000, ARRAY['go', 'aws', 'video-streaming', 'linux'], now() - interval '28 days', 'https://twitch.tv/jobs'),
('Senior Mobile Engineer - iOS', 'Duolingo', 'Pittsburgh, PA', false, 155000, 200000, ARRAY['swift', 'ios', 'mobile', 'animation'], now() - interval '29 days', 'https://duolingo.com/careers'),
('Full Stack Web3 Engineer', 'Uniswap Labs', 'Remote', true, 170000, 230000, ARRAY['solidity', 'react', 'typescript', 'node'], now() - interval '30 days', 'https://uniswap.org/careers'),
('Senior Backend Engineer - Search', 'Elastic', 'Remote', true, 160000, 215000, ARRAY['java', 'elasticsearch', 'lucene', 'distributed-systems'], now() - interval '31 days', 'https://elastic.co/careers'),
('Staff Machine Learning Engineer', 'Scale AI', 'San Francisco, CA', false, 210000, 300000, ARRAY['python', 'pytorch', 'distributed-training', 'aws'], now() - interval '32 days', 'https://scale.com/careers'),
('Frontend Engineer - Interactive Tools', 'Retool', 'San Francisco, CA', true, 155000, 205000, ARRAY['react', 'typescript', 'canvas', 'node'], now() - interval '33 days', 'https://retool.com/careers'),
('Data Engineer - Pipelines', 'Netflix', 'Los Gatos, CA', false, 200000, 320000, ARRAY['python', 'spark', 'kafka', 'sql'], now() - interval '34 days', 'https://netflix.com/careers'),
('Senior Golang Microservices Dev', 'Monzo', 'London, UK', true, 130000, 175000, ARRAY['go', 'kubernetes', 'postgresql', 'microservices'], now() - interval '35 days', 'https://monzo.com/careers'),

-- Day 36 to Day 45
('Product Designer & Frontend Dev', 'Linear', 'Remote', true, 165000, 220000, ARRAY['react', 'figma', 'css', 'design-systems'], now() - interval '37 days', 'https://linear.app/careers'),
('Security Operations Engineer', 'Palantir', 'Denver, CO', false, 140000, 190000, ARRAY['python', 'linux', 'cybersecurity', 'siem'], now() - interval '38 days', 'https://palantir.com/careers'),
('Senior React Developer', 'Automattic / WordPress', 'Remote', true, 125000, 165000, ARRAY['react', 'javascript', 'php', 'wordpress'], now() - interval '40 days', 'https://automattic.com/work-with-us'),
('Lead DevOps Engineer', 'GitLab', 'Remote', true, 170000, 230000, ARRAY['ruby', 'go', 'ci-cd', 'kubernetes'], now() - interval '41 days', 'https://gitlab.com/jobs'),
('Systems Performance Engineer', 'Meta', 'Menlo Park, CA', false, 195000, 275000, ARRAY['c++', 'linux', 'kernel', 'performance'], now() - interval '42 days', 'https://metacareers.com'),
('Senior Full Stack Engineer', 'Vercel', 'Remote', true, 165000, 215000, ARRAY['nextjs', 'react', 'typescript', 'turborepo'], now() - interval '43 days', 'https://vercel.com/careers'),
('Backend API Engineer', 'Plaid', 'New York, NY', true, 160000, 210000, ARRAY['go', 'python', 'rest-api', 'fintech'], now() - interval '44 days', 'https://plaid.com/careers'),
('Staff Frontend Engineer', 'Ramp', 'New York, NY', false, 190000, 250000, ARRAY['react', 'typescript', 'nextjs', 'tailwind'], now() - interval '45 days', 'https://ramp.com/careers'),

-- Day 46 to Day 60 (Older postings for deep pagination)
('Cloud Infrastructure SRE', 'DigitalOcean', 'Remote', true, 135000, 180000, ARRAY['go', 'kubernetes', 'kvm', 'linux'], now() - interval '48 days', 'https://digitalocean.com/careers'),
('Senior Backend Engineer', 'HubSpot', 'Boston, MA', true, 145000, 195000, ARRAY['java', 'mysql', 'kafka', 'microservices'], now() - interval '50 days', 'https://hubspot.com/careers'),
('Senior Design Engineer', 'Framer', 'Amsterdam, Netherlands', true, 125000, 170000, ARRAY['react', 'typescript', 'design-systems', 'animation'], now() - interval '52 days', 'https://framer.com/careers'),
('Lead Database Administrator', 'MongoDB', 'Austin, TX', false, 160000, 215000, ARRAY['mongodb', 'linux', 'python', 'clustering'], now() - interval '54 days', 'https://mongodb.com/careers'),
('Senior Node.js Backend Engineer', 'Twilio', 'Remote', true, 145000, 190000, ARRAY['node', 'typescript', 'rest-api', 'websockets'], now() - interval '56 days', 'https://twilio.com/careers'),
('Staff Kubernetes Engineer', 'Red Hat', 'Raleigh, NC', true, 170000, 230000, ARRAY['kubernetes', 'openshift', 'go', 'linux'], now() - interval '58 days', 'https://redhat.com/jobs'),
('Senior Frontend Developer', 'Atlassian', 'Remote', true, 140000, 185000, ARRAY['react', 'typescript', 'graphql', 'jira'], now() - interval '60 days', 'https://atlassian.com/company/careers');
