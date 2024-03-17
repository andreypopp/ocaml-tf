(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_openid_connect_provider = {
  client_id_list : string list;  (** client_id_list *)
  tags : (string * string) list option; [@option]  (** tags *)
  thumbprint_list : string list;  (** thumbprint_list *)
  url : string;  (** url *)
}
[@@deriving yojson_of]
(** aws_iam_openid_connect_provider *)

let aws_iam_openid_connect_provider ?tags ~client_id_list
    ~thumbprint_list ~url __resource_id =
  let __resource_type = "aws_iam_openid_connect_provider" in
  let __resource = { client_id_list; tags; thumbprint_list; url } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_openid_connect_provider __resource);
  ()
