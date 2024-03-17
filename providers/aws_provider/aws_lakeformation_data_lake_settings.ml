(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_lakeformation_data_lake_settings__create_database_default_permissions = {
  permissions : string list option; [@option]  (** permissions *)
  principal : string option; [@option]  (** principal *)
}
[@@deriving yojson_of]
(** aws_lakeformation_data_lake_settings__create_database_default_permissions *)

type aws_lakeformation_data_lake_settings__create_table_default_permissions = {
  permissions : string list option; [@option]  (** permissions *)
  principal : string option; [@option]  (** principal *)
}
[@@deriving yojson_of]
(** aws_lakeformation_data_lake_settings__create_table_default_permissions *)

type aws_lakeformation_data_lake_settings = {
  allow_external_data_filtering : bool option; [@option]
      (** allow_external_data_filtering *)
  catalog_id : string option; [@option]  (** catalog_id *)
  create_database_default_permissions :
    aws_lakeformation_data_lake_settings__create_database_default_permissions
    list;
  create_table_default_permissions :
    aws_lakeformation_data_lake_settings__create_table_default_permissions
    list;
}
[@@deriving yojson_of]
(** aws_lakeformation_data_lake_settings *)

let aws_lakeformation_data_lake_settings
    ?allow_external_data_filtering ?catalog_id
    ~create_database_default_permissions
    ~create_table_default_permissions __resource_id =
  let __resource_type = "aws_lakeformation_data_lake_settings" in
  let __resource =
    {
      allow_external_data_filtering;
      catalog_id;
      create_database_default_permissions;
      create_table_default_permissions;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lakeformation_data_lake_settings __resource);
  ()
