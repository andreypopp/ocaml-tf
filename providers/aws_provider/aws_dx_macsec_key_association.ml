(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_macsec_key_association = {
  cak : string option; [@option]  (** cak *)
  connection_id : string;  (** connection_id *)
}
[@@deriving yojson_of]
(** aws_dx_macsec_key_association *)

let aws_dx_macsec_key_association ?cak ~connection_id __resource_id =
  let __resource_type = "aws_dx_macsec_key_association" in
  let __resource = { cak; connection_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_macsec_key_association __resource);
  ()
