(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type global_cluster_members = {
  db_cluster_arn : string prop;  (** db_cluster_arn *)
  is_writer : bool prop;  (** is_writer *)
}
[@@deriving yojson_of]

type aws_docdb_global_cluster = {
  database_name : string prop option; [@option]  (** database_name *)
  deletion_protection : bool prop option; [@option]
      (** deletion_protection *)
  engine : string prop option; [@option]  (** engine *)
  engine_version : string prop option; [@option]
      (** engine_version *)
  global_cluster_identifier : string prop;
      (** global_cluster_identifier *)
  id : string prop option; [@option]  (** id *)
  source_db_cluster_identifier : string prop option; [@option]
      (** source_db_cluster_identifier *)
  storage_encrypted : bool prop option; [@option]
      (** storage_encrypted *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_docdb_global_cluster *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_docdb_global_cluster ?database_name ?deletion_protection
    ?engine ?engine_version ?id ?source_db_cluster_identifier
    ?storage_encrypted ?timeouts ~global_cluster_identifier () :
    aws_docdb_global_cluster =
  {
    database_name;
    deletion_protection;
    engine;
    engine_version;
    global_cluster_identifier;
    id;
    source_db_cluster_identifier;
    storage_encrypted;
    timeouts;
  }

type t = {
  arn : string prop;
  database_name : string prop;
  deletion_protection : bool prop;
  engine : string prop;
  engine_version : string prop;
  global_cluster_identifier : string prop;
  global_cluster_members : global_cluster_members list prop;
  global_cluster_resource_id : string prop;
  id : string prop;
  source_db_cluster_identifier : string prop;
  status : string prop;
  storage_encrypted : bool prop;
}

let make ?database_name ?deletion_protection ?engine ?engine_version
    ?id ?source_db_cluster_identifier ?storage_encrypted ?timeouts
    ~global_cluster_identifier __id =
  let __type = "aws_docdb_global_cluster" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       database_name = Prop.computed __type __id "database_name";
       deletion_protection =
         Prop.computed __type __id "deletion_protection";
       engine = Prop.computed __type __id "engine";
       engine_version = Prop.computed __type __id "engine_version";
       global_cluster_identifier =
         Prop.computed __type __id "global_cluster_identifier";
       global_cluster_members =
         Prop.computed __type __id "global_cluster_members";
       global_cluster_resource_id =
         Prop.computed __type __id "global_cluster_resource_id";
       id = Prop.computed __type __id "id";
       source_db_cluster_identifier =
         Prop.computed __type __id "source_db_cluster_identifier";
       status = Prop.computed __type __id "status";
       storage_encrypted =
         Prop.computed __type __id "storage_encrypted";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_docdb_global_cluster
        (aws_docdb_global_cluster ?database_name ?deletion_protection
           ?engine ?engine_version ?id ?source_db_cluster_identifier
           ?storage_encrypted ?timeouts ~global_cluster_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?database_name ?deletion_protection ?engine
    ?engine_version ?id ?source_db_cluster_identifier
    ?storage_encrypted ?timeouts ~global_cluster_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?database_name ?deletion_protection ?engine ?engine_version
      ?id ?source_db_cluster_identifier ?storage_encrypted ?timeouts
      ~global_cluster_identifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
