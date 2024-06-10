connection: "mediawave-looker-poc"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: datalabs_superstore_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: datalabs_superstore_test_default_datagroup

explore: superstore_datasets_ai {}

explore: explore_assistant_examples {}

explore: explore_assistant_refinement_examples {}
