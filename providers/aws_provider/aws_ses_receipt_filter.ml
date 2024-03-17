(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ses_receipt_filter = {
  cidr : string;  (** cidr *)
  name : string;  (** name *)
  policy : string;  (** policy *)
}
[@@deriving yojson_of]
(** aws_ses_receipt_filter *)

let aws_ses_receipt_filter ~cidr ~name ~policy __resource_id =
  let __resource_type = "aws_ses_receipt_filter" in
  let __resource = { cidr; name; policy } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_receipt_filter __resource);
  ()
