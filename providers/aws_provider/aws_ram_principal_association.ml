(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ram_principal_association = {
  id : string prop option; [@option]  (** id *)
  principal : string prop;  (** principal *)
  resource_share_arn : string prop;  (** resource_share_arn *)
}
[@@deriving yojson_of]
(** aws_ram_principal_association *)

type t = {
  id : string prop;
  principal : string prop;
  resource_share_arn : string prop;
}

let aws_ram_principal_association ?id ~principal ~resource_share_arn
    __resource_id =
  let __resource_type = "aws_ram_principal_association" in
  let __resource =
    ({ id; principal; resource_share_arn }
      : aws_ram_principal_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ram_principal_association __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       principal =
         Prop.computed __resource_type __resource_id "principal";
       resource_share_arn =
         Prop.computed __resource_type __resource_id
           "resource_share_arn";
     }
      : t)
  in
  __resource_attributes
