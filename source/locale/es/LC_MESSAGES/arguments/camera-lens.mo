��    /      �                C     
   Q  _   \     �    �     �     �     �     �  �   �  �   �  �   j     E     X     j     z  7   ~  8   �  :   �  >   *  <   i     �  �   �  �   w	  H  G
    �  �   �     *     /  '   L  1   t  �   �     {  ?   �     �     �  G   �     E  <   d  6   �  "   �  .   �      *     K     W     h  �  x  D   G  
   �  q   �     	  >       L     a     e     i  -  q  �   �  �   <           ;     S     g  K   k  L   �  N     U   S  P   �     �      �     �    -  �  �   �     h  +   o  2   �  F   �  �        �  M   �     H      f   M   �       �   B   �   =   7!  $   u!  ;   �!  "   �!     �!     "     "   **Options:** *auto |  perspective |  brown |  fisheye |  spherical* **String** As in the prior example, this Point Cloud is reconstructed via the ``brown`` Camera Lens Model. CPU Camera Lens Models are projection/distortion models that OpenSFM uses to correct for the optics of the camera platforms that record our images. These corrections are essential for proper camera/scene modeling, and therefore, proper reconstruction of the data. Example Images GPU HDD Impact In rare cases, OpenSFM may not be able to detect (or retrieve from its Camera database) the correct Camera Lens Model for your particular sensor, in which case you should select the closest appropriate model. When in doubt, try specifying ``brown`` first. In this Point Cloud reconstruction, severe bowling and other artifacts have been introduced via the use of the wrong Camera Lens Model. Manually choosing a Camera Lens Model is currently only recommended in the case of Spherical Cameras (GoPro Fusion, GoPro Max, Insta360, Kodak PixPro, etc.) as these are currently not detected automatically by OpenSFM. Parameter Default: Parameter Domain: Parameter Type: RAM Rectilinear data rendered by ``auto`` Camera Lens Model Rectilinear data rendered by ``brown`` Camera Lens Model Rectilinear data rendered by ``fisheye`` Camera Lens Model Rectilinear data rendered by ``perspective`` Camera Lens Model Rectilinear data rendered by ``spherical`` Camera Lens Model Resource Set a camera projection type. Manually setting a value can help improve geometric undistortion. By default the application tries to determine a lens type from the images metadata. . Default: ``auto`` The following examples are all data taken with a standard Rectilinear Lens. Manual selection of the various Camera Lens Models is demonstrated to show some differences in how this will affect reconstruction. This Point Cloud failed to reconstruct properly due to the manual selection of the ``fisheye`` Camera Lens Model. Similar failures to reconstruct can often indicate the wrong manual selection, or in edge cases, wrong ``auto`` selection of the Camera Lens Model, and you are advised to try another Model that is more appropriate. This Point Cloud rendered well, very similar to the ``auto`` and ``brown`` examples. One may see artifacts in the ``perspective`` Camera Lens Model in very large collections, or over very flat/homogenus terrain (agricultural fields). In such cases, forcing ``brown`` may help. This Point Cloud shows a proper reconstruction via the ``auto`` (``brown``) Camera Lens Model, which is appropriate for this sensor. Time What Are Camera Lens Models? When are manual selections appropriate? Why would one use a particular Camera Lens Model? `Learn to edit <https://github.com/opendronemap/docs#how-to-make-your-first-contribution>`_ and help improve `this page <https://github.com/OpenDroneMap/docs/blob/publish/source/arguments_edit/camera-lens.rst>`_! ``auto`` ``auto`` : Automatic selection of best camera projection model. ``auto`` : Rectilinear Data ``brown`` : Rectilinear Data ``brown`` : Robust rectilinear projection model. Preferred by ``auto``. ``fisheye`` : Rectilinear Data ``fisheye`` : Wide-angle / non-rectilinear projection model. ``perspective`` : Legacy rectilinear projection model. ``perspective`` : Rectilinear Data ``spherical`` : 360° camera projection model. ``spherical`` : Rectilinear Data camera-lens ○○○ | None ●○○ | Low Project-Id-Version: OpenDroneMap 2.6.6
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-11-12 15:01-0500
PO-Revision-Date: 2021-11-12 20:52+0000
Last-Translator: israel Villarreal <israelbar@gmail.com>, 2021
Language: es
Language-Team: Spanish (https://www.transifex.com/americanredcross/teams/111882/es/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **Opciones:** *auto |  perspective |  brown |  fisheye |  spherical* **Cadena** Como en el ejemplo anterior, esta nube de puntos se reconstruye mediante el modelo de lente de cámara ``brown``. CPU Los modelos de lentes de cámara son modelos de proyección / distorsión que OpenSFM usa para corregir la óptica de las plataformas de cámara que registran nuestras imágenes. Estas correcciones son esenciales para el modelado adecuado de la cámara/escena y, por lo tanto, la reconstrucción adecuada de los datos. Imágenes de ejemplo GPU HDD Impacto En casos excepcionales, es posible que OpenSFM no pueda detectar (o recuperar de su base de datos de cámaras) el modelo de lente de cámara correcto para su sensor en particular, en cuyo caso debe seleccionar el modelo apropiado más cercano. En caso de duda, intente primero especificando ``brown``. En esta reconstrucción de la nube de puntos, se han introducido bolos severos y otros artefactos mediante el uso del modelo de lente de cámara incorrecto. Actualmente, la elección manual de un modelo de lente de cámara solo se recomienda en el caso de las cámaras esféricas (GoPro Fusion, GoPro Max, Insta360, Kodak PixPro, etc.), ya que OpenSFM no las detecta automáticamente. Parámetro predeterminado: Dominio de parámetros: Tipo de parámetro: RAM Datos rectilíneos representados por el modelo de lente de cámara ``auto`` Datos rectilíneos representados por el modelo de lente de cámara ``brown`` Datos rectilíneos representados por el modelo de lente de cámara ``fisheye`` Datos rectilíneos representados por el modelo de lente de cámara de ``perspective`` Datos rectilíneos representados por el modelo de lente de cámara ``esférico`` Recurso Establezca un tipo de proyección de la cámara. Establecer manualmente un valor puede ayudar a mejorar la distorsión geométrica. De forma predeterminada, la aplicación intenta determinar un tipo de lente a partir de los metadatos de las imágenes. Predeterminado: ``auto`` Los siguientes ejemplos son todos los datos tomados con una lente rectilínea estándar. Se demuestra que la selección manual de los distintos modelos de lentes de cámara muestra algunas diferencias en cómo esto afectará la reconstrucción. Esta nube de puntos no se pudo reconstruir correctamente debido a la selección manual del modelo de lente de cámara ``ojo de pez``. Las fallas similares en la reconstrucción a menudo pueden indicar una selección manual incorrecta o, en casos extremos, una selección ``automática`` incorrecta del modelo de lente de la cámara, y se le recomienda que pruebe con otro modelo que sea más apropiado. Esta nube de puntos se renderizó bien, muy similar a los ejemplos ``auto`` y ``brown``. Uno puede ver artefactos en el modelo de lente de cámara de ``perspective`` en colecciones muy grandes, o sobre terreno muy plano/homogéneo (campos agrícolas). En tales casos, forzar el ``brown`` puede ayudar. Esta nube de puntos muestra una reconstrucción adecuada a través del modelo de lente de cámara ``auto`` (``brown``), que es apropiado para este sensor. Tiempo ¿que son los modelos de lentes de cámara? ¿Cuándo son apropiadas las selecciones manuales? ¿Por qué se utilizaría un modelo de lente de cámara en particular? `Aprende a editar <https://github.com/opendronemap/docs#how-to-make-your-first-contribution>`_ y ayuda a mejorar `esta página <https://github.com/OpenDroneMap/docs/blob/publish/source/arguments_edit/camera-lens.rst>`_! ``auto`` ``auto`` : Selección automática del mejor modelo de proyección de cámara. ``auto`` : Datos rectilíneos ``brown`` : Datos rectilíneos ``brown`` : Modelo robusto de proyección rectilínea. Preferred by ``auto``. ``fisheye`` : Datos rectilíneos ``fisheye`` : Modelo de proyección gran angular / no rectilíneo. ``perspective`` : Modelo de proyección rectilíneo heredado. ``perspective`` : Datos rectilíneos ``spherical`` : Modelo de proyección de cámara de 360 °. ``spherical`` : Datos rectilíneos camera-lens ○○○ | Ninguno ●○○ | Bajo 