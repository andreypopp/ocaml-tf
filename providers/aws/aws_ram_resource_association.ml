(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ram_resource_association = {
  id : string prop option; [@option]  (** id *)
  resource_arn : string prop;  (** resource_arn *)
  resource_share_arn : string prop;  (** resource_share_arn *)
}
[@@deriving yojson_of]
(** aws_ram_resource_association *)

let aws_ram_resource_association ?id ~resource_arn
    ~resource_share_arn () : aws_ram_resource_association =
  { id; resource_arn; resource_share_arn }

type t = {
  id : string prop;
  resource_arn : string prop;
  resource_share_arn : string prop;
}

let register ?tf_module ?id ~resource_arn ~resource_share_arn
    __resource_id =
  let __resource_type = "aws_ram_resource_association" in
  let __resource =
    aws_ram_resource_association ?id ~resource_arn
      ~resource_share_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ram_resource_association __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       resource_arn =
         Prop.computed __resource_type __resource_id "resource_arn";
       resource_share_arn =
         Prop.computed __resource_type __resource_id
           "resource_share_arn";
     }
      : t)
  in
  __resource_attributes
