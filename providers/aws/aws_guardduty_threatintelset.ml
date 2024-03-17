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

type t = {
  activate : bool prop;
  arn : string prop;
  detector_id : string prop;
  format : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_guardduty_threatintelset ?id ?tags ?tags_all ~activate
    ~detector_id ~format ~location ~name __resource_id =
  let __resource_type = "aws_guardduty_threatintelset" in
  let __resource =
    ({
       activate;
       detector_id;
       format;
       id;
       location;
       name;
       tags;
       tags_all;
     }
      : aws_guardduty_threatintelset)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_guardduty_threatintelset __resource);
  let __resource_attributes =
    ({
       activate =
         Prop.computed __resource_type __resource_id "activate";
       arn = Prop.computed __resource_type __resource_id "arn";
       detector_id =
         Prop.computed __resource_type __resource_id "detector_id";
       format = Prop.computed __resource_type __resource_id "format";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
