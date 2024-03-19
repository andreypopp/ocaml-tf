(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicequotas_template_association = {
  skip_destroy : bool prop option; [@option]  (** skip_destroy *)
}
[@@deriving yojson_of]
(** aws_servicequotas_template_association *)

let aws_servicequotas_template_association ?skip_destroy () :
    aws_servicequotas_template_association =
  { skip_destroy }

type t = {
  id : string prop;
  skip_destroy : bool prop;
  status : string prop;
}

let register ?tf_module ?skip_destroy __resource_id =
  let __resource_type = "aws_servicequotas_template_association" in
  let __resource =
    aws_servicequotas_template_association ?skip_destroy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicequotas_template_association __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       skip_destroy =
         Prop.computed __resource_type __resource_id "skip_destroy";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
