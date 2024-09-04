(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_virtual_mfa_device = {
  id : string prop option; [@option]
  path : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  virtual_mfa_device_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_virtual_mfa_device) -> ()

let yojson_of_aws_iam_virtual_mfa_device =
  (function
   | {
       id = v_id;
       path = v_path;
       tags = v_tags;
       tags_all = v_tags_all;
       virtual_mfa_device_name = v_virtual_mfa_device_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_mfa_device_name
         in
         ("virtual_mfa_device_name", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_iam_virtual_mfa_device -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_virtual_mfa_device

[@@@deriving.end]

let aws_iam_virtual_mfa_device ?id ?path ?tags ?tags_all
    ~virtual_mfa_device_name () : aws_iam_virtual_mfa_device =
  { id; path; tags; tags_all; virtual_mfa_device_name }

type t = {
  tf_name : string;
  arn : string prop;
  base_32_string_seed : string prop;
  enable_date : string prop;
  id : string prop;
  path : string prop;
  qr_code_png : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  user_name : string prop;
  virtual_mfa_device_name : string prop;
}

let make ?id ?path ?tags ?tags_all ~virtual_mfa_device_name __id =
  let __type = "aws_iam_virtual_mfa_device" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       base_32_string_seed =
         Prop.computed __type __id "base_32_string_seed";
       enable_date = Prop.computed __type __id "enable_date";
       id = Prop.computed __type __id "id";
       path = Prop.computed __type __id "path";
       qr_code_png = Prop.computed __type __id "qr_code_png";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       user_name = Prop.computed __type __id "user_name";
       virtual_mfa_device_name =
         Prop.computed __type __id "virtual_mfa_device_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_virtual_mfa_device
        (aws_iam_virtual_mfa_device ?id ?path ?tags ?tags_all
           ~virtual_mfa_device_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?path ?tags ?tags_all
    ~virtual_mfa_device_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?path ?tags ?tags_all ~virtual_mfa_device_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
