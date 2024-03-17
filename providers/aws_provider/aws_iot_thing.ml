(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iot_thing = {
  attributes : (string * string prop) list option; [@option]
      (** attributes *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  thing_type_name : string prop option; [@option]
      (** thing_type_name *)
}
[@@deriving yojson_of]
(** aws_iot_thing *)

type t = {
  arn : string prop;
  attributes : (string * string) list prop;
  default_client_id : string prop;
  id : string prop;
  name : string prop;
  thing_type_name : string prop;
  version : float prop;
}

let aws_iot_thing ?attributes ?id ?thing_type_name ~name
    __resource_id =
  let __resource_type = "aws_iot_thing" in
  let __resource =
    ({ attributes; id; name; thing_type_name } : aws_iot_thing)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_thing __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       attributes =
         Prop.computed __resource_type __resource_id "attributes";
       default_client_id =
         Prop.computed __resource_type __resource_id
           "default_client_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       thing_type_name =
         Prop.computed __resource_type __resource_id
           "thing_type_name";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
