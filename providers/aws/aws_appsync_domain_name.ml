(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appsync_domain_name = {
  certificate_arn : string prop;
  description : string prop option; [@option]
  domain_name : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appsync_domain_name) -> ()

let yojson_of_aws_appsync_domain_name =
  (function
   | {
       certificate_arn = v_certificate_arn;
       description = v_description;
       domain_name = v_domain_name;
       id = v_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_arn
         in
         ("certificate_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_appsync_domain_name -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appsync_domain_name

[@@@deriving.end]

let aws_appsync_domain_name ?description ?id ~certificate_arn
    ~domain_name () : aws_appsync_domain_name =
  { certificate_arn; description; domain_name; id }

type t = {
  appsync_domain_name : string prop;
  certificate_arn : string prop;
  description : string prop;
  domain_name : string prop;
  hosted_zone_id : string prop;
  id : string prop;
}

let make ?description ?id ~certificate_arn ~domain_name __id =
  let __type = "aws_appsync_domain_name" in
  let __attrs =
    ({
       appsync_domain_name =
         Prop.computed __type __id "appsync_domain_name";
       certificate_arn = Prop.computed __type __id "certificate_arn";
       description = Prop.computed __type __id "description";
       domain_name = Prop.computed __type __id "domain_name";
       hosted_zone_id = Prop.computed __type __id "hosted_zone_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appsync_domain_name
        (aws_appsync_domain_name ?description ?id ~certificate_arn
           ~domain_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~certificate_arn
    ~domain_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~certificate_arn ~domain_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
