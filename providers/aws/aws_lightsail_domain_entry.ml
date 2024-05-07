(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lightsail_domain_entry = {
  domain_name : string prop;
  id : string prop option; [@option]
  is_alias : bool prop option; [@option]
  name : string prop;
  target : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lightsail_domain_entry) -> ()

let yojson_of_aws_lightsail_domain_entry =
  (function
   | {
       domain_name = v_domain_name;
       id = v_id;
       is_alias = v_is_alias;
       name = v_name;
       target = v_target;
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
         let arg = yojson_of_prop yojson_of_string v_target in
         ("target", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_is_alias with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_alias", arg in
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
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_lightsail_domain_entry -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lightsail_domain_entry

[@@@deriving.end]

let aws_lightsail_domain_entry ?id ?is_alias ~domain_name ~name
    ~target ~type_ () : aws_lightsail_domain_entry =
  { domain_name; id; is_alias; name; target; type_ }

type t = {
  tf_name : string;
  domain_name : string prop;
  id : string prop;
  is_alias : bool prop;
  name : string prop;
  target : string prop;
  type_ : string prop;
}

let make ?id ?is_alias ~domain_name ~name ~target ~type_ __id =
  let __type = "aws_lightsail_domain_entry" in
  let __attrs =
    ({
       tf_name = __id;
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       is_alias = Prop.computed __type __id "is_alias";
       name = Prop.computed __type __id "name";
       target = Prop.computed __type __id "target";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_domain_entry
        (aws_lightsail_domain_entry ?id ?is_alias ~domain_name ~name
           ~target ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?is_alias ~domain_name ~name ~target
    ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?id ?is_alias ~domain_name ~name ~target ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
