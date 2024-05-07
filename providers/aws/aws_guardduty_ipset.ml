(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_guardduty_ipset = {
  activate : bool prop;
  detector_id : string prop;
  format : string prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_guardduty_ipset) -> ()

let yojson_of_aws_guardduty_ipset =
  (function
   | {
       activate = v_activate;
       detector_id = v_detector_id;
       format = v_format;
       id = v_id;
       location = v_location;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_format in
         ("format", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_detector_id in
         ("detector_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_activate in
         ("activate", arg) :: bnds
       in
       `Assoc bnds
    : aws_guardduty_ipset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_guardduty_ipset

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
