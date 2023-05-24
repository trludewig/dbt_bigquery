{% snapshot products_snapshot_timestamp %}

    {{
        config(
          target_schema='snapshots',
          strategy='timestamp',
          unique_key='product_id',
          updated_at='updated_at',
        )
    }}

    select 
        product_id,
        name, 
        description,
        cost
    from 
    {{ source('raw', 'products') }}

{% endsnapshot %}