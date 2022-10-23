GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.pink,
                  );
                },
                itemCount: 10,
              ),

shrinkWrap: true
Создает прокручиваемый 2D-массив виджетов, которые создаются по запросу.
Этот конструктор подходит для представлений сетки с большим (или бесконечным) числом дочерних элементов, поскольку конструктор вызывается только для тех дочерних элементов, которые действительно видны.
Предоставление ненулевого значения ItemCount улучшает способность GridView оценивать максимальный размер прокрутки.
-----------------------------------------------------------------------------------
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData.light(
         useMaterial3: true,(!!!!)
      ),
    );
настройка темы Material3
