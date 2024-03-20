(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule__repository_filter = {
  filter : string prop;  (** filter *)
  filter_type : string prop;  (** filter_type *)
}
[@@deriving yojson_of]
(** rule__repository_filter *)

type rule = {
  scan_frequency : string prop;  (** scan_frequency *)
  repository_filter : rule__repository_filter list;
}
[@@deriving yojson_of]
(** rule *)

type aws_ecr_registry_scanning_configuration = {
  id : string prop option; [@option]  (** id *)
  scan_type : string prop;  (** scan_type *)
  rule : rule list;
}
[@@deriving yojson_of]
(** aws_ecr_registry_scanning_configuration *)

let rule__repository_filter ~filter ~filter_type () :
    rule__repository_filter =
  { filter; filter_type }

let rule ~scan_frequency ~repository_filter () : rule =
  { scan_frequency; repository_filter }

let aws_ecr_registry_scanning_configuration ?id ~scan_type ~rule () :
    aws_ecr_registry_scanning_configuration =
  { id; scan_type; rule }

type t = {
  id : string prop;
  registry_id : string prop;
  scan_type : string prop;
}

let make ?id ~scan_type ~rule __id =
  let __type = "aws_ecr_registry_scanning_configuration" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       registry_id = Prop.computed __type __id "registry_id";
       scan_type = Prop.computed __type __id "scan_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecr_registry_scanning_configuration
        (aws_ecr_registry_scanning_configuration ?id ~scan_type ~rule
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~scan_type ~rule __id =
  let (r : _ Tf_core.resource) = make ?id ~scan_type ~rule __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
