(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type domain_validation_records = {
  domain_name : string prop;
  resource_record_name : string prop;
  resource_record_type : string prop;
  resource_record_value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : domain_validation_records) -> ()

let yojson_of_domain_validation_records =
  (function
   | {
       domain_name = v_domain_name;
       resource_record_name = v_resource_record_name;
       resource_record_type = v_resource_record_type;
       resource_record_value = v_resource_record_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_record_value
         in
         ("resource_record_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_record_type
         in
         ("resource_record_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_record_name
         in
         ("resource_record_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       `Assoc bnds
    : domain_validation_records -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_domain_validation_records

[@@@deriving.end]

type aws_lightsail_lb_certificate = {
  domain_name : string prop option; [@option]
  id : string prop option; [@option]
  lb_name : string prop;
  name : string prop;
  subject_alternative_names : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lightsail_lb_certificate) -> ()

let yojson_of_aws_lightsail_lb_certificate =
  (function
   | {
       domain_name = v_domain_name;
       id = v_id;
       lb_name = v_lb_name;
       name = v_name;
       subject_alternative_names = v_subject_alternative_names;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subject_alternative_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subject_alternative_names", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lb_name in
         ("lb_name", arg) :: bnds
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
         match v_domain_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_lightsail_lb_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lightsail_lb_certificate

[@@@deriving.end]

let aws_lightsail_lb_certificate ?domain_name ?id
    ?subject_alternative_names ~lb_name ~name () :
    aws_lightsail_lb_certificate =
  { domain_name; id; lb_name; name; subject_alternative_names }

type t = {
  tf_name : string;
  arn : string prop;
  created_at : string prop;
  domain_name : string prop;
  domain_validation_records : domain_validation_records list prop;
  id : string prop;
  lb_name : string prop;
  name : string prop;
  subject_alternative_names : string list prop;
  support_code : string prop;
}

let make ?domain_name ?id ?subject_alternative_names ~lb_name ~name
    __id =
  let __type = "aws_lightsail_lb_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       created_at = Prop.computed __type __id "created_at";
       domain_name = Prop.computed __type __id "domain_name";
       domain_validation_records =
         Prop.computed __type __id "domain_validation_records";
       id = Prop.computed __type __id "id";
       lb_name = Prop.computed __type __id "lb_name";
       name = Prop.computed __type __id "name";
       subject_alternative_names =
         Prop.computed __type __id "subject_alternative_names";
       support_code = Prop.computed __type __id "support_code";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_lb_certificate
        (aws_lightsail_lb_certificate ?domain_name ?id
           ?subject_alternative_names ~lb_name ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?domain_name ?id ?subject_alternative_names
    ~lb_name ~name __id =
  let (r : _ Tf_core.resource) =
    make ?domain_name ?id ?subject_alternative_names ~lb_name ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
