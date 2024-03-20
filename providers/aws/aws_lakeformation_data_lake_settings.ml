(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type create_database_default_permissions = {
  permissions : string prop list option; [@option]
      (** permissions *)
  principal : string prop option; [@option]  (** principal *)
}
[@@deriving yojson_of]
(** create_database_default_permissions *)

type create_table_default_permissions = {
  permissions : string prop list option; [@option]
      (** permissions *)
  principal : string prop option; [@option]  (** principal *)
}
[@@deriving yojson_of]
(** create_table_default_permissions *)

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
    create_database_default_permissions list;
  create_table_default_permissions :
    create_table_default_permissions list;
}
[@@deriving yojson_of]
(** aws_lakeformation_data_lake_settings *)

let create_database_default_permissions ?permissions ?principal () :
    create_database_default_permissions =
  { permissions; principal }

let create_table_default_permissions ?permissions ?principal () :
    create_table_default_permissions =
  { permissions; principal }

let aws_lakeformation_data_lake_settings ?admins
    ?allow_external_data_filtering ?authorized_session_tag_value_list
    ?catalog_id ?external_data_filtering_allow_list ?id
    ?read_only_admins ?trusted_resource_owners
    ~create_database_default_permissions
    ~create_table_default_permissions () :
    aws_lakeformation_data_lake_settings =
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

type t = {
  admins : string list prop;
  allow_external_data_filtering : bool prop;
  authorized_session_tag_value_list : string list prop;
  catalog_id : string prop;
  external_data_filtering_allow_list : string list prop;
  id : string prop;
  read_only_admins : string list prop;
  trusted_resource_owners : string list prop;
}

let make ?admins ?allow_external_data_filtering
    ?authorized_session_tag_value_list ?catalog_id
    ?external_data_filtering_allow_list ?id ?read_only_admins
    ?trusted_resource_owners ~create_database_default_permissions
    ~create_table_default_permissions __id =
  let __type = "aws_lakeformation_data_lake_settings" in
  let __attrs =
    ({
       admins = Prop.computed __type __id "admins";
       allow_external_data_filtering =
         Prop.computed __type __id "allow_external_data_filtering";
       authorized_session_tag_value_list =
         Prop.computed __type __id
           "authorized_session_tag_value_list";
       catalog_id = Prop.computed __type __id "catalog_id";
       external_data_filtering_allow_list =
         Prop.computed __type __id
           "external_data_filtering_allow_list";
       id = Prop.computed __type __id "id";
       read_only_admins =
         Prop.computed __type __id "read_only_admins";
       trusted_resource_owners =
         Prop.computed __type __id "trusted_resource_owners";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lakeformation_data_lake_settings
        (aws_lakeformation_data_lake_settings ?admins
           ?allow_external_data_filtering
           ?authorized_session_tag_value_list ?catalog_id
           ?external_data_filtering_allow_list ?id ?read_only_admins
           ?trusted_resource_owners
           ~create_database_default_permissions
           ~create_table_default_permissions ());
    attrs = __attrs;
  }

let register ?tf_module ?admins ?allow_external_data_filtering
    ?authorized_session_tag_value_list ?catalog_id
    ?external_data_filtering_allow_list ?id ?read_only_admins
    ?trusted_resource_owners ~create_database_default_permissions
    ~create_table_default_permissions __id =
  let (r : _ Tf_core.resource) =
    make ?admins ?allow_external_data_filtering
      ?authorized_session_tag_value_list ?catalog_id
      ?external_data_filtering_allow_list ?id ?read_only_admins
      ?trusted_resource_owners ~create_database_default_permissions
      ~create_table_default_permissions __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
