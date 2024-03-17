(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_macie2_account = unit [@@deriving yojson_of]

let aws_macie2_account     __resource_id =
  let __resource_type = "aws_macie2_account" in
  let __resource = {
  } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_macie2_account __resource);
  ()
  ;;

