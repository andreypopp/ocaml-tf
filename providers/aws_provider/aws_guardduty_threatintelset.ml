(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_guardduty_threatintelset = {
  activate : bool;  (** activate *)
  detector_id : string;  (** detector_id *)
  format : string;  (** format *)
  location : string;  (** location *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_guardduty_threatintelset *)

let aws_guardduty_threatintelset ?tags ~activate ~detector_id ~format
    ~location ~name __resource_id =
  let __resource_type = "aws_guardduty_threatintelset" in
  let __resource =
    { activate; detector_id; format; location; name; tags }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_guardduty_threatintelset __resource);
  ()
