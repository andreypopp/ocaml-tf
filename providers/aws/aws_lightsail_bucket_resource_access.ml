(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lightsail_bucket_resource_access = {
  bucket_name : string prop;
  id : string prop option; [@option]
  resource_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lightsail_bucket_resource_access) -> ()

let yojson_of_aws_lightsail_bucket_resource_access =
  (function
   | {
       bucket_name = v_bucket_name;
       id = v_id;
       resource_name = v_resource_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_name in
         ("resource_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_lightsail_bucket_resource_access ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lightsail_bucket_resource_access

[@@@deriving.end]

let aws_lightsail_bucket_resource_access ?id ~bucket_name
    ~resource_name () : aws_lightsail_bucket_resource_access =
  { bucket_name; id; resource_name }

type t = {
  bucket_name : string prop;
  id : string prop;
  resource_name : string prop;
}

let make ?id ~bucket_name ~resource_name __id =
  let __type = "aws_lightsail_bucket_resource_access" in
  let __attrs =
    ({
       bucket_name = Prop.computed __type __id "bucket_name";
       id = Prop.computed __type __id "id";
       resource_name = Prop.computed __type __id "resource_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_bucket_resource_access
        (aws_lightsail_bucket_resource_access ?id ~bucket_name
           ~resource_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~bucket_name ~resource_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~bucket_name ~resource_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
