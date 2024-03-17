(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_guardduty_ipset = {
  activate : bool;  (** activate *)
  detector_id : string;  (** detector_id *)
  format : string;  (** format *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_guardduty_ipset *)

let aws_guardduty_ipset ?id ?tags ?tags_all ~activate ~detector_id
    ~format ~location ~name __resource_id =
  let __resource_type = "aws_guardduty_ipset" in
  let __resource =
    {
      activate;
      detector_id;
      format;
      id;
      location;
      name;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_guardduty_ipset __resource);
  ()
