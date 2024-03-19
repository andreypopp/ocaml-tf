(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type attribute__value = { source : string prop list  (** source *) }
[@@deriving yojson_of]
(** attribute__value *)

type attribute = {
  key : string prop;  (** key *)
  value : attribute__value list;
}
[@@deriving yojson_of]
(** attribute *)

type aws_ssoadmin_instance_access_control_attributes = {
  id : string prop option; [@option]  (** id *)
  instance_arn : string prop;  (** instance_arn *)
  attribute : attribute list;
}
[@@deriving yojson_of]
(** aws_ssoadmin_instance_access_control_attributes *)

let attribute__value ~source () : attribute__value = { source }
let attribute ~key ~value () : attribute = { key; value }

let aws_ssoadmin_instance_access_control_attributes ?id ~instance_arn
    ~attribute () : aws_ssoadmin_instance_access_control_attributes =
  { id; instance_arn; attribute }

type t = {
  id : string prop;
  instance_arn : string prop;
  status : string prop;
  status_reason : string prop;
}

let register ?tf_module ?id ~instance_arn ~attribute __resource_id =
  let __resource_type =
    "aws_ssoadmin_instance_access_control_attributes"
  in
  let __resource =
    aws_ssoadmin_instance_access_control_attributes ?id ~instance_arn
      ~attribute ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssoadmin_instance_access_control_attributes
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       instance_arn =
         Prop.computed __resource_type __resource_id "instance_arn";
       status = Prop.computed __resource_type __resource_id "status";
       status_reason =
         Prop.computed __resource_type __resource_id "status_reason";
     }
      : t)
  in
  __resource_attributes
