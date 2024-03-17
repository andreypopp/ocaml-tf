(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_server_certificate = {
  certificate_body : string;  (** certificate_body *)
  certificate_chain : string option; [@option]
      (** certificate_chain *)
  id : string option; [@option]  (** id *)
  name : string option; [@option]  (** name *)
  name_prefix : string option; [@option]  (** name_prefix *)
  path : string option; [@option]  (** path *)
  private_key : string;  (** private_key *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_iam_server_certificate *)

let aws_iam_server_certificate ?certificate_chain ?id ?name
    ?name_prefix ?path ?tags ?tags_all ~certificate_body ~private_key
    __resource_id =
  let __resource_type = "aws_iam_server_certificate" in
  let __resource =
    {
      certificate_body;
      certificate_chain;
      id;
      name;
      name_prefix;
      path;
      private_key;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_server_certificate __resource);
  ()
