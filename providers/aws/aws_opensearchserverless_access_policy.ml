(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opensearchserverless_access_policy = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  policy : string prop;  (** policy *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_opensearchserverless_access_policy *)

let aws_opensearchserverless_access_policy ?description ~name ~policy
    ~type_ () : aws_opensearchserverless_access_policy =
  { description; name; policy; type_ }

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  policy : string prop;
  policy_version : string prop;
  type_ : string prop;
}

let register ?tf_module ?description ~name ~policy ~type_
    __resource_id =
  let __resource_type = "aws_opensearchserverless_access_policy" in
  let __resource =
    aws_opensearchserverless_access_policy ?description ~name ~policy
      ~type_ ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opensearchserverless_access_policy __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       policy = Prop.computed __resource_type __resource_id "policy";
       policy_version =
         Prop.computed __resource_type __resource_id "policy_version";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
