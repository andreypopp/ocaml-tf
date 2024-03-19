(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type location = {
  method_ : string prop option; [@option] [@key "method"]
      (** method *)
  name : string prop option; [@option]  (** name *)
  path : string prop option; [@option]  (** path *)
  status_code : string prop option; [@option]  (** status_code *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** location *)

type aws_api_gateway_documentation_part = {
  id : string prop option; [@option]  (** id *)
  properties : string prop;  (** properties *)
  rest_api_id : string prop;  (** rest_api_id *)
  location : location list;
}
[@@deriving yojson_of]
(** aws_api_gateway_documentation_part *)

let location ?method_ ?name ?path ?status_code ~type_ () : location =
  { method_; name; path; status_code; type_ }

let aws_api_gateway_documentation_part ?id ~properties ~rest_api_id
    ~location () : aws_api_gateway_documentation_part =
  { id; properties; rest_api_id; location }

type t = {
  id : string prop;
  properties : string prop;
  rest_api_id : string prop;
}

let register ?tf_module ?id ~properties ~rest_api_id ~location
    __resource_id =
  let __resource_type = "aws_api_gateway_documentation_part" in
  let __resource =
    aws_api_gateway_documentation_part ?id ~properties ~rest_api_id
      ~location ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_documentation_part __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       properties =
         Prop.computed __resource_type __resource_id "properties";
       rest_api_id =
         Prop.computed __resource_type __resource_id "rest_api_id";
     }
      : t)
  in
  __resource_attributes
