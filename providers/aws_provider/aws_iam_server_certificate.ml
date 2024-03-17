(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_iam_server_certificate = {
  certificate_body : string;  (** certificate_body *)
  certificate_chain : string option; [@option]
      (** certificate_chain *)
  path : string option; [@option]  (** path *)
  private_key : string;  (** private_key *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_iam_server_certificate *)

let aws_iam_server_certificate ?certificate_chain ?path ?tags
    ~certificate_body ~private_key __resource_id =
  let __resource_type = "aws_iam_server_certificate" in
  let __resource =
    { certificate_body; certificate_chain; path; private_key; tags }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_server_certificate __resource);
  ()
