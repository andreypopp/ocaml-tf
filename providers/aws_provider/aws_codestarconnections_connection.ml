(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codestarconnections_connection = {
  host_arn : string option; [@option]  (** host_arn *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_codestarconnections_connection *)

let aws_codestarconnections_connection ?host_arn ?tags ~name
    __resource_id =
  let __resource_type = "aws_codestarconnections_connection" in
  let __resource = { host_arn; name; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codestarconnections_connection __resource);
  ()
