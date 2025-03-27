(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type link = {
  href : string prop;
  title : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : link) -> ()

let yojson_of_link =
  (function
   | { href = v_href; title = v_title } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_title in
       ("title", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_href in
       ("href", arg) :: bnds
     in
     `Assoc bnds
    : link -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_link

[@@@deriving.end]

type vault_config_ui_custom_message = {
  authenticated : bool prop option; [@option]
  end_time : string prop option; [@option]
  message_base64 : string prop;
  namespace : string prop option; [@option]
  options : string prop Tf_core.assoc option; [@option]
  start_time : string prop;
  title : string prop;
  type_ : string prop option; [@option] [@key "type"]
  link : link list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_config_ui_custom_message) -> ()

let yojson_of_vault_config_ui_custom_message =
  (function
   | {
       authenticated = v_authenticated;
       end_time = v_end_time;
       message_base64 = v_message_base64;
       namespace = v_namespace;
       options = v_options;
       start_time = v_start_time;
       title = v_title;
       type_ = v_type_;
       link = v_link;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       if Stdlib.( = ) [] v_link then bnds
       else (
         let arg = (yojson_of_list yojson_of_link) v_link in
         let bnd = "link", arg in
         bnd :: bnds)
     in
     let bnds =
       match v_type_ with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "type", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_title in
       ("title", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_start_time in
       ("start_time", arg) :: bnds
     in
     let bnds =
       match v_options with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "options", arg in
         bnd :: bnds
     in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_message_base64 in
       ("message_base64", arg) :: bnds
     in
     let bnds =
       match v_end_time with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "end_time", arg in
         bnd :: bnds
     in
     let bnds =
       match v_authenticated with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "authenticated", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_config_ui_custom_message -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_config_ui_custom_message

[@@@deriving.end]

let link ~href ~title () = ({ href; title } : link)

let vault_config_ui_custom_message ?authenticated ?end_time ?namespace ?options ?type_ ~message_base64 ~start_time
  ~title ~link () =
  ({ authenticated; end_time; message_base64; namespace; options; start_time; title; type_; link }
    : vault_config_ui_custom_message)

type t = {
  tf_name : string;
  authenticated : bool prop;
  end_time : string prop;
  id : string prop;
  message_base64 : string prop;
  namespace : string prop;
  options : string Tf_core.assoc prop;
  start_time : string prop;
  title : string prop;
  type_ : string prop;
}

let make ?authenticated ?end_time ?namespace ?options ?type_ ~message_base64 ~start_time ~title ~link __id =
  let __type = "vault_config_ui_custom_message" in
  let __attrs =
    ({
       tf_name = __id;
       authenticated = Prop.computed __type __id "authenticated";
       end_time = Prop.computed __type __id "end_time";
       id = Prop.computed __type __id "id";
       message_base64 = Prop.computed __type __id "message_base64";
       namespace = Prop.computed __type __id "namespace";
       options = Prop.computed __type __id "options";
       start_time = Prop.computed __type __id "start_time";
       title = Prop.computed __type __id "title";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_config_ui_custom_message
        (vault_config_ui_custom_message ?authenticated ?end_time ?namespace ?options ?type_ ~message_base64 ~start_time
           ~title ~link ());
    attrs = __attrs;
  }

let register ?tf_module ?authenticated ?end_time ?namespace ?options ?type_ ~message_base64 ~start_time ~title ~link
  __id =
  let (r : _ Tf_core.resource) =
    make ?authenticated ?end_time ?namespace ?options ?type_ ~message_base64 ~start_time ~title ~link __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
