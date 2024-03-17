(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_glacier_vault__notification = {
  events : string list;  (** events *)
  sns_topic : string;  (** sns_topic *)
}
[@@deriving yojson_of]
(** aws_glacier_vault__notification *)

type aws_glacier_vault = {
  access_policy : string option; [@option]  (** access_policy *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  notification : aws_glacier_vault__notification list;
}
[@@deriving yojson_of]
(** aws_glacier_vault *)

let aws_glacier_vault ?access_policy ?tags ~name ~notification
    __resource_id =
  let __resource_type = "aws_glacier_vault" in
  let __resource = { access_policy; name; tags; notification } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glacier_vault __resource);
  ()
