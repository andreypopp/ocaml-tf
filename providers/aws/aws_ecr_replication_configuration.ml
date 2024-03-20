(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type replication_configuration__rule__destination = {
  region : string prop;  (** region *)
  registry_id : string prop;  (** registry_id *)
}
[@@deriving yojson_of]
(** replication_configuration__rule__destination *)

type replication_configuration__rule__repository_filter = {
  filter : string prop;  (** filter *)
  filter_type : string prop;  (** filter_type *)
}
[@@deriving yojson_of]
(** replication_configuration__rule__repository_filter *)

type replication_configuration__rule = {
  destination : replication_configuration__rule__destination list;
  repository_filter :
    replication_configuration__rule__repository_filter list;
}
[@@deriving yojson_of]
(** replication_configuration__rule *)

type replication_configuration = {
  rule : replication_configuration__rule list;
}
[@@deriving yojson_of]
(** replication_configuration *)

type aws_ecr_replication_configuration = {
  id : string prop option; [@option]  (** id *)
  replication_configuration : replication_configuration list;
}
[@@deriving yojson_of]
(** aws_ecr_replication_configuration *)

let replication_configuration__rule__destination ~region ~registry_id
    () : replication_configuration__rule__destination =
  { region; registry_id }

let replication_configuration__rule__repository_filter ~filter
    ~filter_type () :
    replication_configuration__rule__repository_filter =
  { filter; filter_type }

let replication_configuration__rule ~destination ~repository_filter
    () : replication_configuration__rule =
  { destination; repository_filter }

let replication_configuration ~rule () : replication_configuration =
  { rule }

let aws_ecr_replication_configuration ?id ~replication_configuration
    () : aws_ecr_replication_configuration =
  { id; replication_configuration }

type t = { id : string prop; registry_id : string prop }

let make ?id ~replication_configuration __id =
  let __type = "aws_ecr_replication_configuration" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       registry_id = Prop.computed __type __id "registry_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecr_replication_configuration
        (aws_ecr_replication_configuration ?id
           ~replication_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~replication_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ~replication_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
