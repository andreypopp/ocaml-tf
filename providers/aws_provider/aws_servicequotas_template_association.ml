(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicequotas_template_association = {
  skip_destroy : bool option; [@option]  (** skip_destroy *)
}
[@@deriving yojson_of]
(** aws_servicequotas_template_association *)

let aws_servicequotas_template_association ?skip_destroy
    __resource_id =
  let __resource_type = "aws_servicequotas_template_association" in
  let __resource = { skip_destroy } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicequotas_template_association __resource);
  ()
