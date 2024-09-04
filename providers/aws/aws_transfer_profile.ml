(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_transfer_profile = {
  as2_id : string prop;
  certificate_ids : string prop list option; [@option]
  id : string prop option; [@option]
  profile_type : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_transfer_profile) -> ()

let yojson_of_aws_transfer_profile =
  (function
   | {
       as2_id = v_as2_id;
       certificate_ids = v_certificate_ids;
       id = v_id;
       profile_type = v_profile_type;
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
         let arg = yojson_of_prop yojson_of_string v_profile_type in
         ("profile_type", arg) :: bnds
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
         match v_certificate_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "certificate_ids", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_as2_id in
         ("as2_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_transfer_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_transfer_profile

[@@@deriving.end]

let aws_transfer_profile ?certificate_ids ?id ?tags ?tags_all ~as2_id
    ~profile_type () : aws_transfer_profile =
  { as2_id; certificate_ids; id; profile_type; tags; tags_all }

type t = {
  tf_name : string;
  arn : string prop;
  as2_id : string prop;
  certificate_ids : string list prop;
  id : string prop;
  profile_id : string prop;
  profile_type : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?certificate_ids ?id ?tags ?tags_all ~as2_id ~profile_type
    __id =
  let __type = "aws_transfer_profile" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       as2_id = Prop.computed __type __id "as2_id";
       certificate_ids = Prop.computed __type __id "certificate_ids";
       id = Prop.computed __type __id "id";
       profile_id = Prop.computed __type __id "profile_id";
       profile_type = Prop.computed __type __id "profile_type";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_transfer_profile
        (aws_transfer_profile ?certificate_ids ?id ?tags ?tags_all
           ~as2_id ~profile_type ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_ids ?id ?tags ?tags_all ~as2_id
    ~profile_type __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_ids ?id ?tags ?tags_all ~as2_id ~profile_type
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
