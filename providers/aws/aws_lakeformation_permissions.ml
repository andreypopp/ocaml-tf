(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type data_cells_filter = {
  database_name : string prop;  (** database_name *)
  name : string prop;  (** name *)
  table_catalog_id : string prop;  (** table_catalog_id *)
  table_name : string prop;  (** table_name *)
}
[@@deriving yojson_of]
(** data_cells_filter *)

type data_location = {
  arn : string prop;  (** arn *)
  catalog_id : string prop option; [@option]  (** catalog_id *)
}
[@@deriving yojson_of]
(** data_location *)

type database = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** database *)

type lf_tag = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** lf_tag *)

type lf_tag_policy__expression = {
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** lf_tag_policy__expression *)

type lf_tag_policy = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  resource_type : string prop;  (** resource_type *)
  expression : lf_tag_policy__expression list;
}
[@@deriving yojson_of]
(** lf_tag_policy *)

type table = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  database_name : string prop;  (** database_name *)
  name : string prop option; [@option]  (** name *)
  wildcard : bool prop option; [@option]  (** wildcard *)
}
[@@deriving yojson_of]
(** table *)

type table_with_columns = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  column_names : string prop list option; [@option]
      (** column_names *)
  database_name : string prop;  (** database_name *)
  excluded_column_names : string prop list option; [@option]
      (** excluded_column_names *)
  name : string prop;  (** name *)
  wildcard : bool prop option; [@option]  (** wildcard *)
}
[@@deriving yojson_of]
(** table_with_columns *)

type aws_lakeformation_permissions = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  catalog_resource : bool prop option; [@option]
      (** catalog_resource *)
  id : string prop option; [@option]  (** id *)
  permissions : string prop list;  (** permissions *)
  permissions_with_grant_option : string prop list option; [@option]
      (** permissions_with_grant_option *)
  principal : string prop;  (** principal *)
  data_cells_filter : data_cells_filter list;
  data_location : data_location list;
  database : database list;
  lf_tag : lf_tag list;
  lf_tag_policy : lf_tag_policy list;
  table : table list;
  table_with_columns : table_with_columns list;
}
[@@deriving yojson_of]
(** aws_lakeformation_permissions *)

let data_cells_filter ~database_name ~name ~table_catalog_id
    ~table_name () : data_cells_filter =
  { database_name; name; table_catalog_id; table_name }

let data_location ?catalog_id ~arn () : data_location =
  { arn; catalog_id }

let database ?catalog_id ~name () : database = { catalog_id; name }

let lf_tag ?catalog_id ~key ~values () : lf_tag =
  { catalog_id; key; values }

let lf_tag_policy__expression ~key ~values () :
    lf_tag_policy__expression =
  { key; values }

let lf_tag_policy ?catalog_id ~resource_type ~expression () :
    lf_tag_policy =
  { catalog_id; resource_type; expression }

let table ?catalog_id ?name ?wildcard ~database_name () : table =
  { catalog_id; database_name; name; wildcard }

let table_with_columns ?catalog_id ?column_names
    ?excluded_column_names ?wildcard ~database_name ~name () :
    table_with_columns =
  {
    catalog_id;
    column_names;
    database_name;
    excluded_column_names;
    name;
    wildcard;
  }

let aws_lakeformation_permissions ?catalog_id ?catalog_resource ?id
    ?permissions_with_grant_option ~permissions ~principal
    ~data_cells_filter ~data_location ~database ~lf_tag
    ~lf_tag_policy ~table ~table_with_columns () :
    aws_lakeformation_permissions =
  {
    catalog_id;
    catalog_resource;
    id;
    permissions;
    permissions_with_grant_option;
    principal;
    data_cells_filter;
    data_location;
    database;
    lf_tag;
    lf_tag_policy;
    table;
    table_with_columns;
  }

type t = {
  catalog_id : string prop;
  catalog_resource : bool prop;
  id : string prop;
  permissions : string list prop;
  permissions_with_grant_option : string list prop;
  principal : string prop;
}

let make ?catalog_id ?catalog_resource ?id
    ?permissions_with_grant_option ~permissions ~principal
    ~data_cells_filter ~data_location ~database ~lf_tag
    ~lf_tag_policy ~table ~table_with_columns __id =
  let __type = "aws_lakeformation_permissions" in
  let __attrs =
    ({
       catalog_id = Prop.computed __type __id "catalog_id";
       catalog_resource =
         Prop.computed __type __id "catalog_resource";
       id = Prop.computed __type __id "id";
       permissions = Prop.computed __type __id "permissions";
       permissions_with_grant_option =
         Prop.computed __type __id "permissions_with_grant_option";
       principal = Prop.computed __type __id "principal";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lakeformation_permissions
        (aws_lakeformation_permissions ?catalog_id ?catalog_resource
           ?id ?permissions_with_grant_option ~permissions ~principal
           ~data_cells_filter ~data_location ~database ~lf_tag
           ~lf_tag_policy ~table ~table_with_columns ());
    attrs = __attrs;
  }

let register ?tf_module ?catalog_id ?catalog_resource ?id
    ?permissions_with_grant_option ~permissions ~principal
    ~data_cells_filter ~data_location ~database ~lf_tag
    ~lf_tag_policy ~table ~table_with_columns __id =
  let (r : _ Tf_core.resource) =
    make ?catalog_id ?catalog_resource ?id
      ?permissions_with_grant_option ~permissions ~principal
      ~data_cells_filter ~data_location ~database ~lf_tag
      ~lf_tag_policy ~table ~table_with_columns __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
