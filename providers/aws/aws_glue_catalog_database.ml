(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type create_table_default_permission__principal = {
  data_lake_principal_identifier : string prop option; [@option]
      (** data_lake_principal_identifier *)
}
[@@deriving yojson_of]
(** create_table_default_permission__principal *)

type create_table_default_permission = {
  permissions : string prop list option; [@option]
      (** permissions *)
  principal : create_table_default_permission__principal list;
}
[@@deriving yojson_of]
(** create_table_default_permission *)

type federated_database = {
  connection_name : string prop option; [@option]
      (** connection_name *)
  identifier : string prop option; [@option]  (** identifier *)
}
[@@deriving yojson_of]
(** federated_database *)

type target_database = {
  catalog_id : string prop;  (** catalog_id *)
  database_name : string prop;  (** database_name *)
  region : string prop option; [@option]  (** region *)
}
[@@deriving yojson_of]
(** target_database *)

type aws_glue_catalog_database = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  location_uri : string prop option; [@option]  (** location_uri *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  create_table_default_permission :
    create_table_default_permission list;
  federated_database : federated_database list;
  target_database : target_database list;
}
[@@deriving yojson_of]
(** aws_glue_catalog_database *)

let create_table_default_permission__principal
    ?data_lake_principal_identifier () :
    create_table_default_permission__principal =
  { data_lake_principal_identifier }

let create_table_default_permission ?permissions ~principal () :
    create_table_default_permission =
  { permissions; principal }

let federated_database ?connection_name ?identifier () :
    federated_database =
  { connection_name; identifier }

let target_database ?region ~catalog_id ~database_name () :
    target_database =
  { catalog_id; database_name; region }

let aws_glue_catalog_database ?catalog_id ?description ?id
    ?location_uri ?parameters ?tags ?tags_all ~name
    ~create_table_default_permission ~federated_database
    ~target_database () : aws_glue_catalog_database =
  {
    catalog_id;
    description;
    id;
    location_uri;
    name;
    parameters;
    tags;
    tags_all;
    create_table_default_permission;
    federated_database;
    target_database;
  }

type t = {
  arn : string prop;
  catalog_id : string prop;
  description : string prop;
  id : string prop;
  location_uri : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?catalog_id ?description ?id ?location_uri ?parameters ?tags
    ?tags_all ~name ~create_table_default_permission
    ~federated_database ~target_database __id =
  let __type = "aws_glue_catalog_database" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       catalog_id = Prop.computed __type __id "catalog_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       location_uri = Prop.computed __type __id "location_uri";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_catalog_database
        (aws_glue_catalog_database ?catalog_id ?description ?id
           ?location_uri ?parameters ?tags ?tags_all ~name
           ~create_table_default_permission ~federated_database
           ~target_database ());
    attrs = __attrs;
  }

let register ?tf_module ?catalog_id ?description ?id ?location_uri
    ?parameters ?tags ?tags_all ~name
    ~create_table_default_permission ~federated_database
    ~target_database __id =
  let (r : _ Tf_core.resource) =
    make ?catalog_id ?description ?id ?location_uri ?parameters ?tags
      ?tags_all ~name ~create_table_default_permission
      ~federated_database ~target_database __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
