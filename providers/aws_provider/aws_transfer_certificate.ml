(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_transfer_certificate = {
  certificate : string prop;  (** certificate *)
  certificate_chain : string prop option; [@option]
      (** certificate_chain *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  private_key : string prop option; [@option]  (** private_key *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  usage : string prop;  (** usage *)
}
[@@deriving yojson_of]
(** aws_transfer_certificate *)

let aws_transfer_certificate ?certificate_chain ?description ?id
    ?private_key ?tags ?tags_all ~certificate ~usage __resource_id =
  let __resource_type = "aws_transfer_certificate" in
  let __resource =
    {
      certificate;
      certificate_chain;
      description;
      id;
      private_key;
      tags;
      tags_all;
      usage;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transfer_certificate __resource);
  ()
