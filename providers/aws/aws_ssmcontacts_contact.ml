(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ssmcontacts_contact = {
  alias : string prop;
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssmcontacts_contact) -> ()

let yojson_of_aws_ssmcontacts_contact =
  (function
   | {
       alias = v_alias;
       display_name = v_display_name;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_alias in
         ("alias", arg) :: bnds
       in
       `Assoc bnds
    : aws_ssmcontacts_contact -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssmcontacts_contact

[@@@deriving.end]

let aws_ssmcontacts_contact ?display_name ?id ?tags ?tags_all ~alias
    ~type_ () : aws_ssmcontacts_contact =
  { alias; display_name; id; tags; tags_all; type_ }

type t = {
  tf_name : string;
  alias : string prop;
  arn : string prop;
  display_name : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?display_name ?id ?tags ?tags_all ~alias ~type_ __id =
  let __type = "aws_ssmcontacts_contact" in
  let __attrs =
    ({
       tf_name = __id;
       alias = Prop.computed __type __id "alias";
       arn = Prop.computed __type __id "arn";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssmcontacts_contact
        (aws_ssmcontacts_contact ?display_name ?id ?tags ?tags_all
           ~alias ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?tags ?tags_all ~alias
    ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?tags ?tags_all ~alias ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
