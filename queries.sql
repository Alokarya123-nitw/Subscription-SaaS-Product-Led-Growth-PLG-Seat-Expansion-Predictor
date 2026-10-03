-- Query 1: Database Table Schema Setup
CREATE TABLE saas_workspace_telemetry (
    workspace_id INT PRIMARY KEY,
    company_domain VARCHAR(100),
    active_users INT,
    storage_used_gb NUMERIC(10, 2),
    weekly_invites_sent INT,
    advanced_clicks INT,
    country VARCHAR(50)
);

-- Query 2: Regional Engagement Velocity Analytics
WITH regional_aggregates AS (
    SELECT 
        workspace_id,
        company_domain,
        active_users,
        weekly_invites_sent,
        advanced_clicks,
        country,
        AVG(weekly_invites_sent) OVER(PARTITION BY country) as avg_regional_invites
    FROM saas_workspace_telemetry
)
SELECT 
    workspace_id,
    company_domain,
    active_users,
    weekly_invites_sent,
    advanced_clicks,
    country,
    ROUND(avg_regional_invites, 2) as avg_regional_invites,
    CASE 
        WHEN avg_regional_invites = 0 THEN 0
        ELSE ROUND((weekly_invites_sent / avg_regional_invites), 2)
    END as invite_velocity_ratio
FROM regional_aggregates
ORDER BY weekly_invites_sent DESC;
