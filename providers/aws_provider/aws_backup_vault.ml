(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_backup_vault__timeouts = {
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_backup_vault__timeouts *)

type aws_backup_vault = {
  force_destroy : bool option; [@option]  (** force_destroy *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_backup_vault__timeouts option;
}
[@@deriving yojson_of]
(** aws_backup_vault *)

let aws_backup_vault ?force_destroy ?tags ?timeouts ~name
    __resource_id =
  let __resource_type = "aws_backup_vault" in
  let __resource = { force_destroy; name; tags; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_backup_vault __resource);
  ()
