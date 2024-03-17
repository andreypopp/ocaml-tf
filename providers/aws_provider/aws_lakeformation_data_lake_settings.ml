(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lakeformation_data_lake_settings__create_database_default_permissions = {
  permissions : string prop list option; [@option]
      (** permissions *)
  principal : string prop option; [@option]  (** principal *)
}
[@@deriving yojson_of]
(** aws_lakeformation_data_lake_settings__create_database_default_permissions *)

type aws_lakeformation_data_lake_settings__create_table_default_permissions = {
  permissions : string prop list option; [@option]
      (** permissions *)
  principal : string prop option; [@option]  (** principal *)
}
[@@deriving yojson_of]
(** aws_lakeformation_data_lake_settings__create_table_default_permissions *)

type aws_lakeformation_data_lake_settings = {
  admins : string prop list option; [@option]  (** admins *)
  allow_external_data_filtering : bool prop option; [@option]
      (** allow_external_data_filtering *)
  authorized_session_tag_value_list : string prop list option;
      [@option]
      (** authorized_session_tag_value_list *)
  catalog_id : string prop option; [@option]  (** catalog_id *)
  external_data_filtering_allow_list : string prop list option;
      [@option]
      (** external_data_filtering_allow_list *)
  id : string prop option; [@option]  (** id *)
  read_only_admins : string prop list option; [@option]
      (** read_only_admins *)
  trusted_resource_owners : string prop list option; [@option]
      (** trusted_resource_owners *)
  create_database_default_permissions :
    aws_lakeformation_data_lake_settings__create_database_default_permissions
    list;
  create_table_default_permissions :
    aws_lakeformation_data_lake_settings__create_table_default_permissions
    list;
}
[@@deriving yojson_of]
(** aws_lakeformation_data_lake_settings *)

let aws_lakeformation_data_lake_settings ?admins
    ?allow_external_data_filtering ?authorized_session_tag_value_list
    ?catalog_id ?external_data_filtering_allow_list ?id
    ?read_only_admins ?trusted_resource_owners
    ~create_database_default_permissions
    ~create_table_default_permissions __resource_id =
  let __resource_type = "aws_lakeformation_data_lake_settings" in
  let __resource =
    {
      admins;
      allow_external_data_filtering;
      authorized_session_tag_value_list;
      catalog_id;
      external_data_filtering_allow_list;
      id;
      read_only_admins;
      trusted_resource_owners;
      create_database_default_permissions;
      create_table_default_permissions;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lakeformation_data_lake_settings __resource);
  ()
