(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iot_role_alias = {
  alias : string prop;
  credential_duration : float prop option; [@option]
  id : string prop option; [@option]
  role_arn : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iot_role_alias) -> ()

let yojson_of_aws_iot_role_alias =
  (function
   | {
       alias = v_alias;
       credential_duration = v_credential_duration;
       id = v_id;
       role_arn = v_role_arn;
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
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
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
         match v_credential_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "credential_duration", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_alias in
         ("alias", arg) :: bnds
       in
       `Assoc bnds
    : aws_iot_role_alias -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iot_role_alias

[@@@deriving.end]

let aws_iot_role_alias ?credential_duration ?id ?tags ?tags_all
    ~alias ~role_arn () : aws_iot_role_alias =
  { alias; credential_duration; id; role_arn; tags; tags_all }

type t = {
  tf_name : string;
  alias : string prop;
  arn : string prop;
  credential_duration : float prop;
  id : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?credential_duration ?id ?tags ?tags_all ~alias ~role_arn
    __id =
  let __type = "aws_iot_role_alias" in
  let __attrs =
    ({
       tf_name = __id;
       alias = Prop.computed __type __id "alias";
       arn = Prop.computed __type __id "arn";
       credential_duration =
         Prop.computed __type __id "credential_duration";
       id = Prop.computed __type __id "id";
       role_arn = Prop.computed __type __id "role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_role_alias
        (aws_iot_role_alias ?credential_duration ?id ?tags ?tags_all
           ~alias ~role_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?credential_duration ?id ?tags ?tags_all
    ~alias ~role_arn __id =
  let (r : _ Tf_core.resource) =
    make ?credential_duration ?id ?tags ?tags_all ~alias ~role_arn
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
