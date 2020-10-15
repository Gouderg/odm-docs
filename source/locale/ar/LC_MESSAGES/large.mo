��    ,      |              �     �     �  W         X  �   o       �     ^     �   n     L  |  d  ,   �  J       Y  �   s	  }   
    �
     �     �  &   �  I   �  �     1     �   8     �    �    	  |     "   �    �  R   �  E     l   J     �     �  �   �  [   �  �  �  #   �    �  E   �  ]   �  u   P    �  "   �       �     "   �  ,  �     �  �    x   �  �   5         p  >   Q   �"  S   #  �  U#  �   �$  �   �%  z  |&     �'  $   (  8   )(  L   b(    �(  J   �)  �   	*  9   �*  �  ,+  �  �,  �   �.  0   Z/  �  �/  q   1  x   �1  �   2  >   �2     �2  �   3  |   �3  �  n4  ?   7  N  D7  r   �:  {   ;  �   �;   Accessing the Logs Acknowledgments At this point, simply use the ``--sm-cluster`` option to enable distributed split-merge Autoscaling ClusterODM Bowling effect on point cloud over 13,000+ image dataset collected by World Bank Tanzania over the flood prone Msimbasi Basin, Dar es Salaam, Tanzania. Calibrate images ClusterODM also includes the option to autoscale on multiple platforms, including, to date, Amazon and Digital Ocean. This allows users to reduce costs associated with always-on instances as well as being able to scale processing based on demand. Connect via telnet to ClusterODM and add the IP addresses/port of the machines running NodeODM Create a configuration file for `DigitalOcean <https://github.com/OpenDroneMap/ClusterODM/blob/master/docs/digitalocean.md>`_ or `Amazon Web Services <https://github.com/OpenDroneMap/ClusterODM/blob/master/docs/aws.md>`_. Distributed Split-Merge GCPs are fully supported, however, there needs to be at least 3 GCP points on each submodel for the georeferencing to take place. If a submodel has fewer than 3 GCPs, a combination of the remaining GCPs + EXIF data will be used instead (which is going to be less accurate). We recommend using the ``image_groups.txt`` file to accurately control the submodel split when using GCPs. Getting Started with Distributed Split-Merge Have a functioning version of NodeJS installed and then install ClusterODM Huge props to Pau and the folks at Mapillary for their amazing contributions to OpenDroneMap through their OpenSfM code, which is a key component of the split-merge pipeline. We look forward to further pushing the limits of OpenDroneMap and seeing how big a dataset we can process. If you already know how you want to split the dataset, you can provide that information and it will be used instead of the clustering algorithm. If, for example, the NodeODM instance wasn't active when ClusterODM started, we might list nodes and see something as follows Image calibration is recommended (but not required) for large datasets because error propagation due to image distortion could cause a bowl effect on the models. Calibration instructions can be found at      `Calibrate Images <tutorials.html#calibrating-the-camera>`_. Limitations Local Split-Merge Make sure docker-machine is installed. Make sure you are running version ``1.5.1`` or higher of the NodeODM API. ODM can also automatically distribute the processing of each submodel to multiple machines via `NodeODM <https://github.com/OpenDroneMap/NodeODM>`_ nodes, orchestrated via `ClusterODM <https://github.com/OpenDroneMap/ClusterODM>`_. Setup a S3-compatible bucket for storing results. Split-merge works in WebODM out of the box as long as the processing nodes support split-merge, by enabling the ``--split`` option when creating a new task. Splitting Large Datasets Splitting a dataset into more manageable submodels and sequentially processing all submodels on the same machine is easy! Just use ``--split`` and ``--split-overlap`` to decide the the average number of images per submodels and the overlap (in meters) between submodels respectively Starting with ODM version ``0.6.0`` you can split up very large datasets into manageable chunks (called submodels), running the pipeline on each chunk, and then producing merged DEMs, orthophotos and point clouds. The process is referred to as "split-merge". The 3D textured meshes are currently not being merged as part of the workflow (only point clouds, DEMs and orthophotos are). The first step is start ClusterODM The grouping can be provided by adding a file named image_groups.txt in the main dataset folder. The file should have one line per image. Each line should have two words: first the name of the image and second the name of the group it belongs to. For example:: Then on each machine you want to use for processing, launch a NodeODM instance via This way all tasks will be automatically forwarded to the autoscaler. To address this, we can start up our local node (if not already started), and then perform a ``NODE UPDATE`` To setup autoscaling you must: Understanding the Cluster When connected via telnet, it is possible to interrogate what is happening on the cluster. For example, we can use the command HELP to find out available commands While a process is running, it is also possible to list the tasks, and view the task output Why might you use the split-merge pipeline? If you have a very large number of images in your dataset, split-merge will help make the processing more manageable on a large machine (it will require less memory). If you have many machines all connected to the same network you can also process the submodels in parallel, thus allowing for horizontal scaling and processing thousands of images more quickly. You can then launch ClusterODM with You should always have at least one static NodeODM node attached to ClusterODM, even if you plan to use the autoscaler for all processing. If you setup auto scaling, you can't have zero nodes and rely 100% on the autoscaler. You need to attach a NodeODM node to act as the "reference node" otherwise ClusterODM will not know how to handle certain requests (for the forwarding the UI, for validating options prior to spinning up an instance, etc.). For this purpose, you should add a "dummy" NodeODM node and lock it You should see something similar to following messages in the console `Help edit these docs! <https://github.com/OpenDroneMap/docs/blob/publish/source/large.rst>`_ will create 3 submodels. Make sure to pass ``--split-overlap 0`` if you manually provide a ``image_groups.txt`` file. Project-Id-Version: OpenDroneMap 0.9.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-07-21 17:01-0400
PO-Revision-Date: 2020-07-21 21:10+0000
Last-Translator: danbjoseph <danbjoseph@gmail.com>, 2020
Language: ar
Language-Team: Arabic (https://www.transifex.com/americanredcross/teams/111882/ar/)
Plural-Forms: nplurals=6; plural=n==0 ? 0 : n==1 ? 1 : n==2 ? 2 : n%100>=3 && n%100<=10 ? 3 : n%100>=11 && n%100<=99 ? 4 : 5
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 الوصول إلى السجلات شكر وتقدير عند هذه النقطة ، ما عليك سوى استخدام خيار ``--sm-cluster`` لتمكين دمج التقسيم الموزع أوتوسكالينج  ClusterODM تأثير البولينج على السحابة النقطية أكثر من 13000 مجموعة بيانات للصور تم جمعها من قبل البنك الدولي في تنزانيا حول حوض الفيضانات المعرض للفيضانات ، دار السلام ، تنزانيا. معايرة الصور يتضمن ClusterODM أيضًا خيار القياس التلقائي على منصات متعددة ، بما في ذلك حتى الآن ، أمازون والمحيط الرقمي. يسمح ذلك للمستخدمين بتقليل التكاليف المرتبطة بالمثيلات التي تعمل دائمًا بالإضافة إلى القدرة على توسيع نطاق المعالجة بناءً على الطلب. اتصل عبر Telnet بـ ClusterODM وأضف عناوين IP / منفذ الأجهزة التي تعمل بـ NodeODM قم بإنشاء ملف تكوين لـ  `DigitalOcean <https://github.com/OpenDroneMap/ClusterODM/blob/master/docs/digitalocean.md>`_ or `Amazon Web Services <https://github.com/OpenDroneMap/ClusterODM/blob/master/docs/aws.md>`_. دمج سبليت الموزعة يتم دعم GCP بشكل كامل ، ومع ذلك ، يجب أن يكون هناك 3 نقاط GCP على الأقل في كل نموذج فرعي حتى يتم إجراء الإشارة الجغرافية. إذا كان النموذج الفرعي يحتوي على أقل من 3 من نقاط Google Cloud Platform ، فسيتم استخدام مجموعة من بيانات GCPs + EXIF ​​المتبقية بدلاً من ذلك (والتي ستكون أقل دقة). نوصي باستخدام ملف `` image_groups.txt '' للتحكم بدقة في تقسيم النموذج الفرعي عند استخدام GCP. الشروع في البدء في عملية دمج التجزئة الموزعة قم بتثبيت إصدار فعال من NodeJS ثم قم بتثبيت ClusterODM الدعائم الضخمة لباو والناس في Mapillary لمساهماتهم المذهلة في OpenDroneMap من خلال كود OpenSfM الخاص بهم ، والذي يعد مكونًا رئيسيًا لخط الأنابيب المدمج. نحن نتطلع إلى زيادة حدود OpenDroneMap ومعرفة مدى ضخامة مجموعة البيانات التي يمكننا معالجتها. إذا كنت تعرف بالفعل كيف تريد تقسيم مجموعة البيانات ، يمكنك تقديم هذه المعلومات وسيتم استخدامها بدلاً من خوارزمية التجميع. إذا ، على سبيل المثال ، لم يكن مثيل NodeODM نشطًا عند بدء ClusterODM ، فقد ندرج العقد ونرى شيئًا كالتالي يوصى بمعايرة الصورة (ولكن ليس مطلوبًا) لمجموعات البيانات الكبيرة لأن انتشار الخطأ بسبب تشوه الصورة يمكن أن يسبب تأثير الوعاء على النماذج. يمكن العثور على تعليمات المعايرة في `Calibrate Images  <tutorials.html#calibrating-the-camera>`_. محددات دمج التجزئة المحلية تأكد من تثبيت آلة عامل الميناء. تأكد من تشغيل الإصدار 1.5.1 أو أعلى من NodeODM API يمكن لـ ODM أيضًا توزيع معالجة كل نموذج فرعي تلقائيًا على أجهزة متعددة عبر `NodeODM <https://github.com/OpenDroneMap/NodeODM>`_ nodes, مدبرة عبر `ClusterODM <https://github.com/OpenDroneMap/ClusterODM>`_. قم بإعداد دلو متوافق مع S3 لتخزين النتائج. تعمل ميزة Split-merge في WebODM من خارج الصندوق طالما أن عقد المعالجة تدعم الدمج المقسم ، من خلال تمكين خيار `` -split '' عند إنشاء مهمة جديدة. تقسيم مجموعات البيانات الكبيرة إن تقسيم مجموعة البيانات إلى نماذج فرعية أكثر قابلية للإدارة ومعالجة جميع النماذج الفرعية على نفس الجهاز بالتتابع أمر سهل! ما عليك سوى استخدام "--split" و "--split-interap" لتحديد متوسط ​​عدد الصور لكل نماذج فرعية والتداخل (بالأمتار) بين النماذج الفرعية على التوالي بدءًا من إصدار ODM `` 0.6.0  ، يمكنك تقسيم مجموعات البيانات الكبيرة جدًا إلى قطع قابلة للإدارة (تسمى النماذج الفرعية) ، وتشغيل خط الأنابيب على كل قطعة ، ثم إنتاج DEMs مدمجة ، وتقويم الصور ، وسحب النقاط. يشار إلى العملية باسم "الدمج المقسم". لا يتم دمج الشبكات ثلاثية الأبعاد في الوقت الحالي كجزء من سير العمل (فقط الغيوم النقطية ، DEMs و orthophotos هي). الخطوة الأولى هي بدء ClusterODM مكن توفير التجميع عن طريق إضافة ملف باسم image_groups.txt في مجلد مجموعة البيانات الرئيسي. يجب أن يحتوي الملف على سطر واحد لكل صورة. يجب أن يحتوي كل سطر على كلمتين: أولاً اسم الصورة وثانيًا اسم المجموعة التي تنتمي إليها. فمثلا:: ثم على كل جهاز تريد استخدامه للمعالجة ، قم بتشغيل مثيل NodeODM عبر بهذه الطريقة ستتم إعادة توجيه جميع المهام تلقائيًا إلى أوتوسكالر. لمعالجة هذا ، يمكننا بدء العقدة المحلية الخاصة بنا (إذا لم تكن قد بدأت بالفعل) ، ثم إجراء ``تحديث العقدة`` لإعداد القياس التلقائي ، يجب عليك: فهم الكتلة ند الاتصال عبر telnet ، من الممكن استجواب ما يحدث على الكتلة. على سبيل المثال ، يمكننا استخدام الأمر HELP لمعرفة الأوامر المتاحة أثناء تشغيل العملية ، من الممكن أيضًا سرد المهام ، وعرض إخراج المهمة لماذا قد تستخدم خط أنابيب الدمج المقسم؟ إذا كان لديك عدد كبير جدًا من الصور في مجموعة البيانات الخاصة بك ، سيساعد الدمج المقسم على جعل المعالجة أكثر قابلية للإدارة على جهاز كبير (سيتطلب ذاكرة أقل). إذا كان لديك العديد من الأجهزة المتصلة جميعها بالشبكة نفسها ، فيمكنك أيضًا معالجة النماذج الفرعية بشكل متوازٍ ، مما يسمح بالقياس الأفقي ومعالجة آلاف الصور بسرعة أكبر. يمكنك بعد ذلك تشغيل ClusterODM باستخدام يجب أن يكون لديك دائمًا عقدة NodeODM ثابتة واحدة على الأقل متصلة بـ ClusterODM ، حتى إذا كنت تخطط لاستخدام أداة autoscaler لجميع عمليات المعالجة. إذا قمت بإعداد التحجيم التلقائي ، فلا يمكن أن يكون لديك صفر عقد وتعتمد 100٪ على أداة القسط الآلي. تحتاج إلى إرفاق عقدة NodeODM لتكون بمثابة "العقدة المرجعية" وإلا فلن يعرف ClusterODM كيفية التعامل مع طلبات معينة (لإعادة توجيه واجهة المستخدم ، للتحقق من صحة الخيارات قبل تدوير مثيل ، وما إلى ذلك). لهذا الغرض ، يجب عليك إضافة عقدة NodeODM "وهمية" وقفلها من المفترض أن ترى شيئًا مشابهًا للرسائل التالية في وحدة التحكم `ساعد في تحرير هذه المستندات! <https://github.com/OpenDroneMap/docs/blob/publish/source/large.rst>`_ سيتم إنشاء 3 نماذج فرعية. تأكد من تمرير "--split-overap 0" إذا قدمت يدويًا ملف `` image_groups.txt ''. 