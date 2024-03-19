(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ecrpublic_repository_policy = {
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
  repository_name : string prop;  (** repository_name *)
}
[@@deriving yojson_of]
(** aws_ecrpublic_repository_policy *)

let aws_ecrpublic_repository_policy ?id ~policy ~repository_name () :
    aws_ecrpublic_repository_policy =
  { id; policy; repository_name }

type t = {
  id : string prop;
  policy : string prop;
  registry_id : string prop;
  repository_name : string prop;
}

let register ?tf_module ?id ~policy ~repository_name __resource_id =
  let __resource_type = "aws_ecrpublic_repository_policy" in
  let __resource =
    aws_ecrpublic_repository_policy ?id ~policy ~repository_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecrpublic_repository_policy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       policy = Prop.computed __resource_type __resource_id "policy";
       registry_id =
         Prop.computed __resource_type __resource_id "registry_id";
       repository_name =
         Prop.computed __resource_type __resource_id
           "repository_name";
     }
      : t)
  in
  __resource_attributes
