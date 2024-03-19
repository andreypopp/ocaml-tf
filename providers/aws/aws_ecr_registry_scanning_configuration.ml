(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ~scan_type ~rule __resource_id =
  let __resource_type = "aws_ecr_registry_scanning_configuration" in
  let __resource =
    aws_ecr_registry_scanning_configuration ?id ~scan_type ~rule ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecr_registry_scanning_configuration __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       registry_id =
         Prop.computed __resource_type __resource_id "registry_id";
       scan_type =
         Prop.computed __resource_type __resource_id "scan_type";
     }
      : t)
  in
  __resource_attributes
