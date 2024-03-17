(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dms_certificate = {
  certificate_id : string prop;  (** certificate_id *)
  certificate_pem : string prop option; [@option]
      (** certificate_pem *)
  certificate_wallet : string prop option; [@option]
      (** certificate_wallet *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_dms_certificate *)

let aws_dms_certificate ?certificate_pem ?certificate_wallet ?id
    ?tags ?tags_all ~certificate_id __resource_id =
  let __resource_type = "aws_dms_certificate" in
  let __resource =
    {
      certificate_id;
      certificate_pem;
      certificate_wallet;
      id;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dms_certificate __resource);
  ()
