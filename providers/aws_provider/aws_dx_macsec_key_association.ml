(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_macsec_key_association = {
  cak : string prop option; [@option]  (** cak *)
  ckn : string prop option; [@option]  (** ckn *)
  connection_id : string prop;  (** connection_id *)
  id : string prop option; [@option]  (** id *)
  secret_arn : string prop option; [@option]  (** secret_arn *)
}
[@@deriving yojson_of]
(** aws_dx_macsec_key_association *)

let aws_dx_macsec_key_association ?cak ?ckn ?id ?secret_arn
    ~connection_id __resource_id =
  let __resource_type = "aws_dx_macsec_key_association" in
  let __resource = { cak; ckn; connection_id; id; secret_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_macsec_key_association __resource);
  ()
