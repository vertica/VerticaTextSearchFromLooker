
- view: search_udf_query
  derived_table:
    sql: |
      SELECT 
              TextSearch(
                       {% parameter search_expression %}::VARCHAR, 
                      'opsa_default'::VARCHAR, 
                      'la_unique_msg'::VARCHAR,
                      'message'::VARCHAR, 
                      'opsa_default'::VARCHAR, 
                      'text_index'::VARCHAR, 
                      15                
                      USING PARAMETERS 
                            host='54.67.93.24', 
                            db_name='verticanow', 
                            db_user='textsearch_udf', 
                            db_password='Textsearch_udf@9999', 
                            port='5433', 
                            include_text=true)
                      OVER()

  fields:
  
  - filter: search_expression
  
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: id
    type: number
    sql: ${TABLE}.id

  - dimension: text
    type: string
    sql: ${TABLE}.text

  sets:
    detail:
      - id
      - text

