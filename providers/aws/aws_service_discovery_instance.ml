(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_service_discovery_instance = {
  attributes : (string * string prop) list;  (** attributes *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  service_id : string prop;  (** service_id *)
}
[@@deriving yojson_of]
(** aws_service_discovery_instance *)

let aws_service_discovery_instance ?id ~attributes ~instance_id
    ~service_id () : aws_service_discovery_instance =
  { attributes; id; instance_id; service_id }

type t = {
  attributes : (string * string) list prop;
  id : string prop;
  instance_id : string prop;
  service_id : string prop;
}

let register ?tf_module ?id ~attributes ~instance_id ~service_id
    __resource_id =
  let __resource_type = "aws_service_discovery_instance" in
  let __resource =
    aws_service_discovery_instance ?id ~attributes ~instance_id
      ~service_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_service_discovery_instance __resource);
  let __resource_attributes =
    ({
       attributes =
         Prop.computed __resource_type __resource_id "attributes";
       id = Prop.computed __resource_type __resource_id "id";
       instance_id =
         Prop.computed __resource_type __resource_id "instance_id";
       service_id =
         Prop.computed __resource_type __resource_id "service_id";
     }
      : t)
  in
  __resource_attributes
