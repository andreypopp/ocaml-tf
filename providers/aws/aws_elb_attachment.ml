(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_elb_attachment = {
  elb : string prop;  (** elb *)
  id : string prop option; [@option]  (** id *)
  instance : string prop;  (** instance *)
}
[@@deriving yojson_of]
(** aws_elb_attachment *)

type t = {
  elb : string prop;
  id : string prop;
  instance : string prop;
}

let aws_elb_attachment ?id ~elb ~instance __resource_id =
  let __resource_type = "aws_elb_attachment" in
  let __resource = ({ elb; id; instance } : aws_elb_attachment) in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elb_attachment __resource);
  let __resource_attributes =
    ({
       elb = Prop.computed __resource_type __resource_id "elb";
       id = Prop.computed __resource_type __resource_id "id";
       instance =
         Prop.computed __resource_type __resource_id "instance";
     }
      : t)
  in
  __resource_attributes
