(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dnsimple_zone_record = {
  name : string prop;
  priority : float prop option; [@option]
  regions : string prop list option; [@option]
  ttl : float prop option; [@option]
  type_ : string prop; [@key "type"]
  value : string prop;
  zone_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dnsimple_zone_record) -> ()

let yojson_of_dnsimple_zone_record =
  (function
   | {
       name = v_name;
       priority = v_priority;
       regions = v_regions;
       ttl = v_ttl;
       type_ = v_type_;
       value = v_value;
       zone_name = v_zone_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_name in
         ("zone_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_regions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "regions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : dnsimple_zone_record -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dnsimple_zone_record

[@@@deriving.end]

let dnsimple_zone_record ?priority ?regions ?ttl ~name ~type_ ~value
    ~zone_name () : dnsimple_zone_record =
  { name; priority; regions; ttl; type_; value; zone_name }

type t = {
  tf_name : string;
  id : float prop;
  name : string prop;
  name_normalized : string prop;
  priority : float prop;
  qualified_name : string prop;
  regions : string list prop;
  ttl : float prop;
  type_ : string prop;
  value : string prop;
  value_normalized : string prop;
  zone_id : string prop;
  zone_name : string prop;
}

let make ?priority ?regions ?ttl ~name ~type_ ~value ~zone_name __id
    =
  let __type = "dnsimple_zone_record" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_normalized = Prop.computed __type __id "name_normalized";
       priority = Prop.computed __type __id "priority";
       qualified_name = Prop.computed __type __id "qualified_name";
       regions = Prop.computed __type __id "regions";
       ttl = Prop.computed __type __id "ttl";
       type_ = Prop.computed __type __id "type";
       value = Prop.computed __type __id "value";
       value_normalized =
         Prop.computed __type __id "value_normalized";
       zone_id = Prop.computed __type __id "zone_id";
       zone_name = Prop.computed __type __id "zone_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_dnsimple_zone_record
        (dnsimple_zone_record ?priority ?regions ?ttl ~name ~type_
           ~value ~zone_name ());
    attrs = __attrs;
  }

let register ?tf_module ?priority ?regions ?ttl ~name ~type_ ~value
    ~zone_name __id =
  let (r : _ Tf_core.resource) =
    make ?priority ?regions ?ttl ~name ~type_ ~value ~zone_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
