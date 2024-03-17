(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_backup_global_settings = {
  global_settings : (string * string) list;  (** global_settings *)
}
[@@deriving yojson_of]
(** aws_backup_global_settings *)

let aws_backup_global_settings ~global_settings __resource_id =
  let __resource_type = "aws_backup_global_settings" in
  let __resource = { global_settings } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_backup_global_settings __resource);
  ()
