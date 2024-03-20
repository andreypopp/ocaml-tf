(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_virtual_mfa_device = {
  id : string prop option; [@option]  (** id *)
  path : string prop option; [@option]  (** path *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  virtual_mfa_device_name : string prop;
      (** virtual_mfa_device_name *)
}
[@@deriving yojson_of]
(** aws_iam_virtual_mfa_device *)

let aws_iam_virtual_mfa_device ?id ?path ?tags ?tags_all
    ~virtual_mfa_device_name () : aws_iam_virtual_mfa_device =
  { id; path; tags; tags_all; virtual_mfa_device_name }

type t = {
  arn : string prop;
  base_32_string_seed : string prop;
  enable_date : string prop;
  id : string prop;
  path : string prop;
  qr_code_png : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_name : string prop;
  virtual_mfa_device_name : string prop;
}

let make ?id ?path ?tags ?tags_all ~virtual_mfa_device_name __id =
  let __type = "aws_iam_virtual_mfa_device" in
  let __attrs =
    ({
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
