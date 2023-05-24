{% snapshot customers_snapshot_check %}

    {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='id',
          check_cols=['phone', 'city', 'state'],
        )
    }}

    select 
        id, 
        first_name, 
        last_name, 
        phone, 
        city, 
        state, 
        created_ts
    from {{ source('raw', 'customers') }}

{% endsnapshot %}