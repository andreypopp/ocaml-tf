(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_guardduty_ipset = {
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
(** aws_guardduty_ipset *)

let aws_guardduty_ipset ?id ?tags ?tags_all ~activate ~detector_id
    ~format ~location ~name () : aws_guardduty_ipset =
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

let make ?id ?tags ?tags_all ~activate ~detector_id ~format ~location
    ~name __id =
  let __type = "aws_guardduty_ipset" in
  let __attrs =
    ({
       activate = Prop.computed __type __id "activate";
       arn = Prop.computed __type __id "arn";
       detector_id = Prop.computed __type __id "detector_id";
       format = Prop.computed __type __id "format";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_guardduty_ipset
        (aws_guardduty_ipset ?id ?tags ?tags_all ~activate
           ~detector_id ~format ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~activate ~detector_id
    ~format ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~activate ~detector_id ~format ~location
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
