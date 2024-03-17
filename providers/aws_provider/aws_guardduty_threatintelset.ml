(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_guardduty_threatintelset = {
  activate : bool prop;  (** activate *)
  detector_id : string prop;  (** detector_id *)
  format : string prop;  (** format *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_guardduty_threatintelset *)

let aws_guardduty_threatintelset ?id ?tags ?tags_all ~activate
    ~detector_id ~format ~location ~name __resource_id =
  let __resource_type = "aws_guardduty_threatintelset" in
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
    (yojson_of_aws_guardduty_threatintelset __resource);
  ()
