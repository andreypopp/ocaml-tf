(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudfront_origin_access_control = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  origin_access_control_origin_type : string prop;
  signing_behavior : string prop;
  signing_protocol : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudfront_origin_access_control) -> ()

let yojson_of_aws_cloudfront_origin_access_control =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       origin_access_control_origin_type =
         v_origin_access_control_origin_type;
       signing_behavior = v_signing_behavior;
       signing_protocol = v_signing_protocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_signing_protocol
         in
         ("signing_protocol", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_signing_behavior
         in
         ("signing_behavior", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_origin_access_control_origin_type
         in
         ("origin_access_control_origin_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudfront_origin_access_control ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudfront_origin_access_control

[@@@deriving.end]

let aws_cloudfront_origin_access_control ?description ?id ~name
    ~origin_access_control_origin_type ~signing_behavior
    ~signing_protocol () : aws_cloudfront_origin_access_control =
  {
    description;
    id;
    name;
    origin_access_control_origin_type;
    signing_behavior;
    signing_protocol;
  }

type t = {
  description : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  origin_access_control_origin_type : string prop;
  signing_behavior : string prop;
  signing_protocol : string prop;
}

let make ?description ?id ~name ~origin_access_control_origin_type
    ~signing_behavior ~signing_protocol __id =
  let __type = "aws_cloudfront_origin_access_control" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       origin_access_control_origin_type =
         Prop.computed __type __id
           "origin_access_control_origin_type";
       signing_behavior =
         Prop.computed __type __id "signing_behavior";
       signing_protocol =
         Prop.computed __type __id "signing_protocol";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_origin_access_control
        (aws_cloudfront_origin_access_control ?description ?id ~name
           ~origin_access_control_origin_type ~signing_behavior
           ~signing_protocol ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~name
    ~origin_access_control_origin_type ~signing_behavior
    ~signing_protocol __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~name ~origin_access_control_origin_type
      ~signing_behavior ~signing_protocol __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
